FactoryGirl.define do
  factory :user do
    login "homersimpson"
    email "homer@simpsons.com"
    password "senha123"
    password_confirmation "senha123"
    #account FactoryGirl.create(:account)
    #type_user TypeUser.find(1)
  end
end
