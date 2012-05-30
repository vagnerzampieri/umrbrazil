class History < ActiveRecord::Base
  attr_accessible :company_id, :entry_date, :exit_date, :description, :prescription_drugs
end
