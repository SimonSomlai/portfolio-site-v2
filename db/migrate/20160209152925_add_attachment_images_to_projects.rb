class AddAttachmentImagesToProjects < ActiveRecord::Migration
  	def change
		add_attachment :projects, :image1
		add_attachment :projects, :image2
		add_attachment :projects, :image3
		add_attachment :projects, :image4
	end

end
