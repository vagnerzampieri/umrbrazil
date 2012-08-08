FactoryGirl.define do
  factory :telephone do
    ddd "21"
    tel "38383838"
    association :type_telephone
  end
end
