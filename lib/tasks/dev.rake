namespace :dev do
  desc "Setup development environment"
  task setup: :environment do
    puts '--- Cadastrando os contatos ---'
    100.times do |i|
      name =  Faker::Name.name
      email = Faker::Internet.email
      birthdate = Faker::Date.between(65.years.ago, 18.years.ago)

      puts "--- #{i} - #{name} - #{email} - #{birthdate}"

      Contact.create!(name: name, email: email, birthdate: birthdate)
    end
    puts '--- Cadastrado com sucesso! ---'
  end

end
