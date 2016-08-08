class ContactsController < ApplicationController
	def new 
		@contact = Contact.new
	end
	
	def create 
	    	@contact = Contact.new(params[:contact])
	   		@contact.request = request
	    if @contact.deliver
	      redirect_to root_url
	    else
	      redirect_to root_url
	    end
  	end
end