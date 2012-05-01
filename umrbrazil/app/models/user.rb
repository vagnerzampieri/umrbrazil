class User < ActiveRecord::Base
  belongs_to :account
  belongs_to :type_user
  #attr_accessible :name, :login, :email, :password, :password_confirmation
end
