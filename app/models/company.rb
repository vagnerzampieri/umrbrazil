class Company < ActiveRecord::Base
  image_accessor :cover_image

  attr_accessible :name, :brand_name, :cnpj, :state_inscription, :municipal_inscription, :cep, :address, :number, :complement, :neighborhood, :city, :state, :country, :site, :account_id, :cover_image

  has_many :histories
  has_many :telephones
  belongs_to :account

end
