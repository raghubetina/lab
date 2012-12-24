class Status < ActiveRecord::Base
  attr_accessible :imac, :progress, :step_id
  
  belongs_to :step
end
