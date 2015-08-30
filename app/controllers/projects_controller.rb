class ProjectsController < ApplicationController
	def index
		mechanize = Mechanize.new
		ember = "http://emberjs.com/blog/tags/releases.html"
		page = mechanize.get(ember)

		@ember_release = page.at("h2 a").text.strip
	end 

end
