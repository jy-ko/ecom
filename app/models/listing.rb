class Listing < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user, optional: true

    validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
    validates :title, length: { maximum: 100, too_long: "%{count} characters is the maximum allowed." }


    #CATEGORY= %w{ Translation Consulting WebDesign Other }
end
