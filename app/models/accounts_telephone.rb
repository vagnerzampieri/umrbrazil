class AccountsTelephone < ActiveRecord::Base
  belongs_to :account
  belongs_to :telephone
end
