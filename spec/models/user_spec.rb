require 'spec_helper'

describe User do
  subject {FactoryGirl.create(:user)}

  it {should respond_to(:login)}
  it {should respond_to(:email)}
  it {should respond_to(:password)}
  it {should respond_to(:password_confirmation)}
  it {should respond_to(:type_user_id)}
  it {should respond_to(:account_id)}

  it {should belong_to(:account)}
  it {should belong_to(:type_user)}

  it {should validate_presence_of(:login)}
  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:account_id)}
  it {should validate_presence_of(:type_user_id)}

  it {should validate_uniqueness_of(:login)}
  it {should validate_uniqueness_of(:email)}

  it {should allow_value('lisa@simpsons.com').for(:email)}
  it {should_not allow_value('lisasimpsons.com').for(:email)}

  xit {should_not allow_mass_assignment_of(:password)}
end
