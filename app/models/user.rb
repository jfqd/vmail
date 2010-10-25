class User < ActiveRecord::Base
  belongs_to :domain
  has_many :aliases
  
  before_save :population
  
  validates_presence_of   :domain_id
  validates_format_of     :name,
                          :with => /\A[\w\.%\+\-]+\z/i, 
                          :message => "should be valid for an email"

  def population
    self.address = "#{self.name}@#{self.domain.domain}"
    self.maildir = "#{self.domain.domain}/#{self.name}/"
    self.realm   = "#{self.domain.domain}"
  end

end
