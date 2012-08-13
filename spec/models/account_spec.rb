require 'spec_helper'
describe Account do
  subject {create(:account)}

  it {should respond_to(:name)}
  it {should respond_to(:cpf)}
  it {should respond_to(:cep)}
  it {should respond_to(:address)}
  it {should respond_to(:number)}
  it {should respond_to(:complement)}
  it {should respond_to(:neighborhood)}
  it {should respond_to(:city)}
  it {should respond_to(:state)}
  it {should respond_to(:country)}
  #it {should respond_to(:cover_image)}
  it {should respond_to(:rg)}
  it {should respond_to(:birth_certificate)}
  it {should respond_to(:ric)}
  it {should respond_to(:age)}
  it {should respond_to(:birth)}
  it {should respond_to(:mother_name)}
  it {should respond_to(:place_of_birth)}
  it {should respond_to(:civil_status)}
  it {should respond_to(:user_id)}
  it {should respond_to(:anamnesis_id)}

  it {should belong_to(:user)}
  it {should belong_to(:anamnesis)}

  it {should have_many(:telephones)}
  it {should have_many(:histories)}
  it {should have_many(:companies)}

  it {should accept_nested_attributes_for(:telephones)}

  it {should allow_value('003.162.824-99').for(:cpf)}
  it {should_not allow_value('431.752.721-30').for(:cpf)}
  it {should allow_value('20456989').for(:cep)}
  it {should_not allow_value('204545698').for(:cep)}
  it {should allow_value('20456-989').for(:cep)}
  it {should_not allow_value('2045698').for(:cep)}
  it {should allow_value('').for(:cep)}

end
