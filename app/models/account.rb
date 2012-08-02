class Account < ActiveRecord::Base
  image_accessor :cover_image

  attr_accessible :cpf, :address, :number, :complement, :neighborhood, :city, :state, :country, :cover_image, :anamnesis_id, :rg, :birth_certificate, :ric, :age, :birth, :mother_name, :place_of_birth, :civil_status, :telephones_attributes

  belongs_to :user
  belongs_to :anamnesis

  has_many :companies
  has_many :histories
  has_many :telephones
  accepts_nested_attributes_for :telephones, allow_destroy: true
end
