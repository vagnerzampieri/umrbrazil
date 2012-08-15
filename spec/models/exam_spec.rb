require 'spec_helper'
describe Exam do
  it {should respond_to(:title)}
  it {should respond_to(:description)}
  it {should respond_to(:emission)}
  it {should respond_to(:doctor)}
  it {should respond_to(:crm)}
  it {should respond_to(:history_id)}
  it {should respond_to(:account_id)}
  it {should respond_to(:company_id)}

  it {should belong_to(:history)}
  it {should belong_to(:account)}
  it {should belong_to(:company)}

  it {should have_many(:attachments)}

  it {should accept_nested_attributes_for(:attachments)}
end
