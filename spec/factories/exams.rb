# encoding: UTF-8
FactoryGirl.define do
  factory :exam do
    title 'Test'
    description 'Test exam'
    emission Time.now
    doctor 'Julius Hibbert'
    crm 'RJ334352'
  end
end
