class TypeTelephone < ActiveRecord::Base
  has_many :telephones
  attr_accessible :name, :enabled

  validates :name, presence: true
end
