namespace :scrape do
  desc "Scrape most recent version for all projects"
  task all: :environment do
  	mechanize = Mechanize.new
  	Project.all.each do |project|
  		page = mechanize.get(project.github_url)
  		version = page.at(project.selector).text.strip
  		project.update(latest_version: version)
		end
  end

end