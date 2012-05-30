class TypeTelephone < ActiveRecord::Base
  attr_accessible :name, :enabled

  has_many :telephones

  validates :name, presence: true
end
