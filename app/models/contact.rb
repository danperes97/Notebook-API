class Contact < ApplicationRecord
  scope :over_18, -> { self.where('birthdate > ?', 18.years.ago ) }

  def author
    'Danilo Peres'
  end

  def as_json(options = {})
    super(methods: :author, root: true)
  end
end
