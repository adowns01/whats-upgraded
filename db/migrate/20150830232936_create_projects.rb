class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :name
    	t.string :github_url
    	t.string :selector
    	t.string :regex_match
      t.timestamps null: false
    end
  end
end
