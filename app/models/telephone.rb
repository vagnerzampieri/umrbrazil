class Telephone < ActiveRecord::Base
  belongs_to :type_telephone
  has_many :accounts_telephones
  has_many :accounts, :through => :accounts_telephones
end
