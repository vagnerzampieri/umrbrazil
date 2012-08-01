FactoryGirl.define do
  factory :type_telephone do
    name "Trabalho"
    enabled true
  end

  factory :telephone do
    ddd "21"
    tel "38383838"
    association :type_telephone
  end

  factory :account

  factory :type_user do
    name "Admin"
    enabled true
  end

  factory :user do
    login "homersimpson"
    email "homer@simpsons.com"
    password "senha123"
    password_confirmation "senha123"
    association :account
    association :type_user
  end
end
