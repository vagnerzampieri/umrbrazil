class TypeTelephone < ActiveRecord::Base
  has_many :telephones

  validates :name, :presence => true
end
