class Alias < ActiveRecord::Base
  belongs_to :user
  belongs_to :domain
  
  attr_accessor :name
  
  before_save :population
  
  validates_presence_of   :domain_id
  validates_presence_of   :name
  validates_presence_of   :goto
  
  def population
    self.address = "#{self.name}@#{self.domain.domain}"
  end
  
end
