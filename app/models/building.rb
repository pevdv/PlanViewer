class Building < ActiveRecord::Base
  has_many :floor, dependent: :destroy
  
  validates :name, :address, :postal_code, :image_url, presence: true
  validates :name, :address, :postal_code, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\z}i,
    message: 'must be a URL for GIF, JPG, or PNG image.'
  }
end
