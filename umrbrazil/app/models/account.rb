class Account < ActiveRecord::Base
  attr_accessible :cpf, :address, :number, :complement, :neighborhood, :city, :state, :country
  has_one :user
  has_many :accounts_telephones
  has_many :telephones, :through => :accounts_telephones
end
