class Project < ActiveRecord::Base

	def self.mechanize
		return @@mechanizer if defined? @@mechanizer
		@@mechanizer = Mechanize.new
	end

	def latest_version 
		page = Project.mechanize.get(github_url)
		return page.at(selector).text.strip
	end 
end

