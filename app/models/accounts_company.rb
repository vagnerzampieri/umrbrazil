class AccountsCompany < ActiveRecord::Base
  attr_accessible :account_id, :company_id

  belongs_to :account
  belongs_to :company
end
