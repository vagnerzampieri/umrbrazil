FactoryGirl.define do
  factory :user do
    login "homersimpson"
    email "homer@simpsons.com"
    password "senha123"
    password_confirmation "senha123"
    association :account
    association :type_user
  end
end
