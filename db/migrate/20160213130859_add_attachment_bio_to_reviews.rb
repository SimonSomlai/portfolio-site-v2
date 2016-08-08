class AddAttachmentBioToReviews < ActiveRecord::Migration
  	def change
		add_attachment :reviews, :bio
	end
end
