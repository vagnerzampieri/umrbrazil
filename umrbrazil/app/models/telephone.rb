class Telephone < ActiveRecord::Base
  belongs_to :accounts
  belongs_to :type_telephone
end
