class User < ActiveRecord::Base
  acts_as_authentic

  attr_accessible :login, :email, :password, :password_confirmation, :account_id, :type_user_id

  belongs_to :account
  belongs_to :type_user

  validates :login, :email, :type_user_id, presence: true
  validates :login, :email, uniqueness: true
  validates :email, format: {with: /^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|coop|info|museum|name))$/}
end
