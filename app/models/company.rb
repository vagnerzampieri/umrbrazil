class Company < ActiveRecord::Base
  image_accessor :cover_image

  attr_accessible :name, :brand_name, :cnpj, :state_inscription, :municipal_inscription, :address, :number, :complement, :neighborhood, :city, :state, :country, :site, :cover_image

  has_many :histories
  has_many :telephones
  has_many :accounts_companies
  has_many :accounts, through: :accounts_companies

end
