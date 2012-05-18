FactoryGirl.define do
  factory :type_telephone do |t|
    t.name "Trabalho"
    t.enabled true
  end

  factory :telephone do |t|
    t.ddd "21"
    t.tel "38383838"
    t.type_telephone FactoryGirl.create(:type_telephone)
  end

  factory :account

  factory :user do |u|
    u.name "Homer Simpson"
    u.login "homersimpson"
    u.email "homer@simpsons.com"
    u.password "senha123"
    u.password_confirmation "senha123"
    u.account FactoryGirl.create(:account)
  end
end
