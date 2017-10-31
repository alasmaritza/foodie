class Photo < ApplicationRecord
    mount_uploader :image, ImageUploader
    
   # belongs_to :user
    belongs_to :place
    
    validates :image, presence: true
    validates :caption, length: {maximum: 100}

end
