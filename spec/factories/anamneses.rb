# encoding: UTF-8
FactoryGirl.define do
  factory :anamnesis do
    blood_type 'O'
    rh_factor '+'
    weight 76.0
    height 1.96
    sex 'Masculino'
    blood_pressure '120x80'
    smoking false
    drugs 'Nicotine, Valium, Vicodin, marijuana, ecstasy and alcohol'
  end
end
