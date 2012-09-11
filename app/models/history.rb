class History < ActiveRecord::Base
  attr_accessible :company_id, :entry_date, :exit_date, :description, :prescription_drugs, :account_id

  belongs_to :company
  belongs_to :account
  has_many :exams

  acts_as_taggable_on :specialties
  has_many :taggings, :as => :taggable, :dependent => :destroy, :include => :tag, :class_name => "ActsAsTaggableOn::Tagging"
end
