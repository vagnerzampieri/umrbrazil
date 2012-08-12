class Anamnesis < ActiveRecord::Base
  attr_accessible :blood_type, :rh_factor, :weight, :height, :sex, :blood_pressure, :smoking, :account_id

  belongs_to :account
end
