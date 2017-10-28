class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	
  belongs_to :user
  has_many :comments

  validates :title, presence: true,
            length: { maximum: 50 }
            
  validates :image, presence: true
end
