class Image < ActiveRecord::Base
        acts_as_votable
    mount_uploader :file, ImageUploader

    belongs_to :user
    has_many :image_comment, -> {order "created_at DESC"}
    def self.search(search)
        if search
            where("title LIKE ? OR address LIKE ?", "%#{search}%","%#{search}%")
        else
            all
        end
    end
end
