require 'spec_helper'
describe Account do
  subject {Account.create}

  it {should respond_to(:cpf)}
  it {should respond_to(:address)}
  it {should respond_to(:number)}
  it {should respond_to(:complement)}
  it {should respond_to(:neighborhood)}
  it {should respond_to(:city)}
  it {should respond_to(:state)}
  it {should respond_to(:country)}
  it {should respond_to(:cover_image)}
  it {should respond_to(:rg)}
  it {should respond_to(:birth_certificate)}
  it {should respond_to(:ric)}
  it {should respond_to(:age)}
  it {should respond_to(:birth)}
  it {should respond_to(:mother_name)}
  it {should respond_to(:place_of_birth)}
  it {should respond_to(:civil_status)}
  it {should respond_to(:anamnesis_id)}

  it {should belong_to(:user)}
  it {should belong_to(:anamnesis)}

  it {should have_many(:telephones)}
  it {should have_many(:histories)}
  it {should have_many(:companies)}

  it {should accept_nested_attributes_for(:telephones)}
end
