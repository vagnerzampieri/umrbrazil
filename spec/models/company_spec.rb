require 'spec_helper'

describe Company do
  subject {create(:company)}

  it {should respond_to(:name)}
  it {should respond_to(:brand_name)}
  it {should respond_to(:cnpj)}
  it {should respond_to(:state_inscription)}
  it {should respond_to(:municipal_inscription)}
  it {should respond_to(:cep)}
  it {should respond_to(:address)}
  it {should respond_to(:number)}
  it {should respond_to(:complement)}
  it {should respond_to(:neighborhood)}
  it {should respond_to(:city)}
  it {should respond_to(:state)}
  it {should respond_to(:country)}
  it {should respond_to(:site)}
  it {should respond_to(:cover_image)}
  it {should respond_to(:account_id)}

  it {should have_many(:histories)}
  it {should have_many(:telephones)}
  it {should belong_to(:account)}
end
