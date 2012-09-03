class TypeUser < ActiveRecord::Base
  attr_accessible :name, :enabled

  has_many :users

  scope :available, where(enabled: true)

  validates :name, presence: true
end
