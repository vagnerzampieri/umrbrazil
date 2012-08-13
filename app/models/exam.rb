class Exam < ActiveRecord::Base
  has_attached_file :pdf, styles: {thumb: "32x32", minimum: "64x64", medium: "128x128", large: "256x256", huge: "800x600"}

  attr_accessible :title, :description, :emission, :doctor, :crm, :history_id, :account_id, :company_id

  belongs_to :history
  belongs_to :account
  belongs_to :company
end
