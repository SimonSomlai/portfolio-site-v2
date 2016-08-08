class Review < ActiveRecord::Base
	has_attached_file :bio, styles: {small: "150x150>", med: "250x250>", large: "1000x400>"}, :default_url => "/images/default_image.png"
	validates_attachment_content_type :bio, :content_type => ["image/jpg", "image/png", "image/jpeg"]
end
