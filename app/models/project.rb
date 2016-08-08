class Project < ActiveRecord::Base
	has_attached_file :image1, styles: {small: "150x150>", med: "250x250>", large: "1000x400>"}, :default_url => "/images/default_image.png"
	validates_attachment_content_type :image1, :content_type => ["image/jpg", "image/png", "image/jpeg"]

	has_attached_file :image2, styles: {small: "150x150>", med: "250x250>", large: "1000x400>"},:default_url => "/images/default_image.png"
	validates_attachment_content_type :image2, :content_type => ["image/jpg", "image/png", "image/jpeg"]

	has_attached_file :image3, styles: {small: "150x150>", med: "250x250>", large: "1000x400>"},:default_url => "/images/default_image.png"
	validates_attachment_content_type :image3, :content_type => ["image/jpg", "image/png", "image/jpeg"]

	has_attached_file :image4, styles: {small: "150x150>", med: "250x250>", large: "1000x400>"},:default_url => "/images/default_image.png"
	validates_attachment_content_type :image4, :content_type => ["image/jpg", "image/png", "image/jpeg"]

	extend FriendlyId
  		friendly_id :title, use: :slugged
end

