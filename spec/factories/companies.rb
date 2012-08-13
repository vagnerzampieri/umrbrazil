# encoding: UTF-8
FactoryGirl.define do
  factory :company do
    name 'Unimed LTDA'
    brand_name 'Unimed'
    cnpj '51.465.107/0001-46'
    state_inscription '22328441'
    municipal_inscription '12345671'
    address 'Rua Babá das Couves'
    number '1000'
    complement 'apt/100'
    neighborhood 'Centro'
    city 'Rio de Janeiro'
    state 'Rio de Janeiro'
    country 'Brasil'
    site 'unimed.com.br'
    #cover_image Rails.root.join('app', 'assets', 'images', 'rails.png')
    #account Account.find(1)
  end
end
