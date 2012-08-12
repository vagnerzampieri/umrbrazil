# encoding: UTF-8

FactoryGirl.define do
  factory :account do
    name 'Homer Simpson'
    cpf '91964848709'
    rg '418757896'
    birth_certificate '124323fr'
    ric '0000000000-1'
    age '25'
    birth Time.now - 25.years
    mother_name 'Mona Simpson'
    place_of_birth 'Springfield'
    civil_status 'Casado'
    cep '21342322'
    address 'Rua Babá das Couves'
    number '1000'
    complement 'apt 1000'
    neighborhood 'Centro'
    city 'Springfield'
    state 'Ohio'
    country 'EUA'
    cover_image Rails.root.join('app', 'assets', 'images', 'rails.png')
    #user FactoryGirl.build(:user)
    #anamnesis FactoryGirl.create(:anamnesis)
  end
end
