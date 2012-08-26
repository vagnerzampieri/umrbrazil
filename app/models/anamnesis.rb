class Anamnesis < ActiveRecord::Base
  attr_accessible :blood_type, :rh_factor, :weight, :height, :sex, :blood_pressure, :smoking, :account_id, :diseases, :disease_list, :drugs, :drug_list, :allergies, :allergy_list, :surgeries, :surgery_list

  acts_as_taggable_on :diseases, :drugs, :allergies, :surgeries
  has_many :taggings, :as => :taggable, :dependent => :destroy, :include => :tag, :class_name => "ActsAsTaggableOn::Tagging"

  belongs_to :account
end
