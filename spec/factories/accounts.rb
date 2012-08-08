FactoryGirl.define do
  factory :account do
    name 'Homer Simpson'
    user_id ''
    cpf ''
    rg ''
    birth_certificate ''
    ric ''
    age ''
    birth ''
    mother_name ''
    place_of_birth ''
    civil_status ''
    cep ''
    address ''
    number ''
    complement ''
    neighborhood ''
    city ''
    state ''
    country ''
    cover 'image/rails.png'
    associations anamnesis
  end
end
