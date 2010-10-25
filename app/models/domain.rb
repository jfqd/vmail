class Domain < ActiveRecord::Base
  has_many :users
  has_many :aliases
  
  validates_presence_of   :domain
end
