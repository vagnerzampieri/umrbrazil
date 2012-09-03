class Account < ActiveRecord::Base
  image_accessor :cover_image

  attr_accessible :name, :user_id, :cep, :cpf, :address, :number, :complement, :neighborhood, :city, :state, :country, :anamnesis_id, :rg, :birth_certificate, :ric, :age, :birth, :mother_name, :place_of_birth, :civil_status, :telephones_attributes, :cover_image

  has_one :user
  has_one :anamnese

  has_many :companies
  has_many :histories
  has_many :telephones
  accepts_nested_attributes_for :telephones, allow_destroy: true

  validates :cep, :format => { :with => /^\d{2}\.?\d{3}\-?\d{3}$/ }, :unless => lambda {self.cep.blank?}
  validates :cpf, cpf: true
end
