class Company < ActiveRecord::Base
  image_accessor :cover_image
  has_many :users_companies
  has_many :users, through: :users_companies

  attr_accessible :name, :brand_name, :cnpj, :state_inscription, :municipal_inscription, :address, :number, :complement, :neighborhood, :city, :state, :country, :site, :cover_image
end
