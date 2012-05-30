class TypeUser < ActiveRecord::Base
  attr_accessible :name, :enabled

  has_many :users

  validates :name, presence: true
end
