class AccountsCompany < ActiveRecord::Base
  belongs_to :account
  belongs_to :company
end
