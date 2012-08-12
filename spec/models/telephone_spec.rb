require 'spec_helper'

describe Telephone do
  subject {FactoryGirl.build(:telephone)}

  it {should respond_to(:ddd)}
  it {should respond_to(:tel)}
  it {should respond_to(:branch_line)}
  it {should respond_to(:published)}
  it {should respond_to(:type_telephone_id)}
  it {should respond_to(:account_id)}
  it {should respond_to(:company_id)}
  it {should belong_to(:type_telephone)}
  it {should belong_to(:account)}
  it {should belong_to(:company)}

  it {should validate_presence_of(:ddd)}
  it {should validate_presence_of(:tel)}
  it {should validate_presence_of(:type_telephone)}

  it {should ensure_length_of(:ddd).is_equal_to(2)}
  it {should ensure_length_of(:tel).is_at_least(8).is_at_most(10)}
  it {should ensure_length_of(:branch_line).is_at_least(0).is_at_most(4)}
end
