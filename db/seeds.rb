github_selector = ".release.label-latest .release-meta .css-truncate-target"

# Ember CLI
ember_cli_params = {
	name: "ember cli", 
	github_url: "https://github.com/ember-cli/ember-cli/releases",
	selector: github_selector
}
Project.create(ember_cli_params)

#Ember 
ember_params = {
	name: "ember", 
	github_url: "https://github.com/emberjs/ember.js/releases",
	selector: github_selector
}
Project.create(ember_params)

#Rails 
rails_params = {
	name: "rails",
	github_url: "https://github.com/rails/rails/releases", 
	selector: ".tag-info .tag-name", 
	regex_match: "/(Rails) (\\d\\.\\d\\.\\d) .* released/"
}
Project.create(rails_params)
