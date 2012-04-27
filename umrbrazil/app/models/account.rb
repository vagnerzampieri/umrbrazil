class Account < ActiveRecord::Base
  has_many :telephones
  attr_accessible :cpf, :telephone_id, :address, :number, :complement, :neighborhood, :city, :state, :country
end
