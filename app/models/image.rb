class Image < ActiveRecord::Base
    mount_uploader :file, ImageUploader
    
    belongs_to :user
    def self.search(search)
        if search
            where("title LIKE ? OR address LIKE ?", "%#{search}%","%#{search}%")
        else
            all
        end
    end
end
