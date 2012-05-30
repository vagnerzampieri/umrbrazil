class User < ActiveRecord::Base
  acts_as_authentic

  attr_accessible :name, :login, :email, :password, :password_confirmation, :account_id, :type_user_id

  belongs_to :account
  belongs_to :type_user
end
