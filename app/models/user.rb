class User < ActiveRecord::Base
  belongs_to :account
  belongs_to :type_user
  has_many :users_companies
  has_many :companies, :through => :users_companies

  acts_as_authentic
  attr_accessible :name, :login, :email, :password, :password_confirmation
end
