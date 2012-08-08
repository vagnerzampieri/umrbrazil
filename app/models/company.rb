class Company < ActiveRecord::Base
  image_accessor :cover_image

  attr_accessible :name, :brand_name, :cnpj, :state_inscription, :municipal_inscription, :cep, :address, :number, :complement, :neighborhood, :city, :state, :country, :site, :cover_image, :account_id

  has_many :histories
  has_many :telephones
  belongs_to :account

end
