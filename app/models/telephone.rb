class Telephone < ActiveRecord::Base
  belongs_to :type_telephone
  has_many :accounts_telephones
  has_many :accounts, :through => :accounts_telephones

  attr_accessible :ddd, :tel, :type_telephone_id, :branch_line, :published

  validates :ddd, :presence => true, :length => {:is => 2}
  validates :tel, :presence => true, :length => {:is => 8}
  validates :branch_line, :length => {:is => 4}, :unless => lambda {self.branch_line.blank?}
  validates :type_telephone_id, :presence => true

end
