class Floor < ActiveRecord::Base
  belongs_to :building
  has_many :layout, dependent: :destroy
  
  validates :number, :code, :building, presence: true
  validates :number, numericality: {greater_than: 0}
end
