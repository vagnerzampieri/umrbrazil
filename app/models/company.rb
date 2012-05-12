class Company < ActiveRecord::Base
  has_many :users_companies
  has_many :users, :through => :users_companies

  attr_accessible :name, :brand_name, :cnpj, :state_inscription, :municipal_inscription, :address, :number, :complement, :neighborhood, :city, :state, :country, :site
end
