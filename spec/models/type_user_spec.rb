require 'spec_helper'
describe TypeUser do
  it {should respond_to(:name)}
  it {should respond_to(:enabled)}

  it {should have_many(:users)}

  it {should validate_presence_of(:name)}
end
