class ProjectsController < ApplicationController
	def index
		mechanize = Mechanize.new
		github_target = ".release.label-latest .release-meta .css-truncate-target"

		ember_cli = "https://github.com/ember-cli/ember-cli/releases"
		ember_cli_page = mechanize.get(ember_cli)
		@ember_cli_release = ember_cli_page.at(github_target).text.strip

		ember = "https://github.com/emberjs/ember.js/releases"
		ember_page = mechanize.get(ember)
		@ember_release = ember_page.at(github_target).text.strip

		rails_github_target = ".tag-info .tag-name"
		rails = "https://github.com/rails/rails/releases"
		rails_page = mechanize.get(rails)
		@rails_release = rails_page.at(rails_github_target).text.strip

	end 

end
