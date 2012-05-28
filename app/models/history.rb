class History < ActiveRecord::Base
  attr_accessible :company, :entry_date, :exit_date, :description, :prescription_drugs
end
