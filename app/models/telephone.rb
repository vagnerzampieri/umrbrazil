class Telephone < ActiveRecord::Base
  attr_accessible :ddd, :tel, :type_telephone_id, :branch_line, :published, :account_id, :company_id

  belongs_to :type_telephone
  belongs_to :account
  belongs_to :company

  validates :ddd, presence: true, length: {is: 2}
  validates :tel, presence: true, length: {within: 8..10}
  validates :branch_line, length: {within: 0..4}, unless: lambda {self.branch_line.blank?}
  validates :type_telephone, presence: true
end
