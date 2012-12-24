class Step < ActiveRecord::Base
  attr_accessible :description, :position, :lab_id
  
  belongs_to :lab
  has_many :statuses
end
