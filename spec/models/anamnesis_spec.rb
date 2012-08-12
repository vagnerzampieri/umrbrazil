require 'spec_helper'
describe Anamnesis do
  it {should respond_to(:blood_type)}
  it {should respond_to(:rh_factor)}
  it {should respond_to(:weight)}
  it {should respond_to(:height)}
  it {should respond_to(:sex)}
  it {should respond_to(:blood_pressure)}
  it {should respond_to(:smoking)}
  it {should respond_to(:account_id)}

  it {should belong_to(:account)}
end
