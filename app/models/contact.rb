class Contact < ApplicationRecord

  #Validations
  validates_presence_of :kind

  # Associations
  belongs_to :kind #, optional: true
  has_many :phones

  accepts_nested_attributes_for :phones, allow_destroy: true

  def as_json(options={})
    h = super(options)
    h[:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
    h
  end
end
