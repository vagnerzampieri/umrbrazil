class Account < ActiveRecord::Base
  attr_accessible :cpf, :address, :number, :complement, :neighborhood, :city, :state, :country
end
