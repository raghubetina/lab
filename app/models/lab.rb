class Lab < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_many :steps
  has_many :statuses, :through => :steps
end
