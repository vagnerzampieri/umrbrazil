class TypeUser < ActiveRecord::Base
  has_many :users
  attr_accessible :name, :enabled

  validates :name, presence: true
end
