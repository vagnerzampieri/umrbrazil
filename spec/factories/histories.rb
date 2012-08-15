# encoding: UTF-8
FactoryGirl.define do
  factory :history do
    entry_date Time.now
    exit_date Time.now + 2.weeks
    description 'Pacient'
    prescription_drugs 'Nicotin, valium, vaicodin, marihuana, extasy, alchool'
  end
end
