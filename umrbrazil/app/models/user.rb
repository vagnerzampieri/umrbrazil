class User < ActiveRecord::Base
  belongs_to :type_user
  belongs_to :account

  attr_accessible :name, :login, :email
end
