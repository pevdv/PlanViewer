class Layout < ActiveRecord::Base
  belongs_to :floor
  
  validates :description, :file_location, :floor, presence: true
  #TODO: Validate that that the file location is correct
end
