class User < ActiveRecord::Base
  belongs_to :account
  belongs_to :type_user

  acts_as_authentic
  #attr_accessible :name, :login, :email, :password, :password_confirmation
end
