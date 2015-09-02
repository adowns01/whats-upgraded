class AddVersionToDb < ActiveRecord::Migration
  def change
  	add_column :projects, :latest_version, :string
  end
end
