class Account < ActiveRecord::Base
  attr_accessible :cpf, :telephone_id, :address, :number, :complement, :neighborhood, :city, :state, :country
end
