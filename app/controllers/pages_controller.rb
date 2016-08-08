class PagesController < ApplicationController
		def home
			@reviews = Review.all
			@projects = Project.limit(6).order("created_at desc")
		end

		def legal

		end

		def about

		end

		def website

		end

		def landing_page

		end

		def conversion

		end

		def seo

		end

end


