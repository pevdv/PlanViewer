class Floor < ActiveRecord::Base
  belongs_to :building
  
  validates :number, :code, :building, presence: true
  validates :number, numericality: {greater_than: 0}
end
