class User < ActiveRecord::Base
  attr_accessible :name, :login, :email
end
