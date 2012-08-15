require 'spec_helper'
describe History do
  it {should respond_to(:entry_date)}
  it {should respond_to(:exit_date)}
  it {should respond_to(:description)}
  it {should respond_to(:prescription_drugs)}
  it {should respond_to(:account_id)}
  it {should respond_to(:company_id)}

  it {should belong_to(:company)}
  it {should belong_to(:account)}

  it {should have_many(:exams)}
end
