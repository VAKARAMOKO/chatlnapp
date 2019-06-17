class RenameAllTablesToUsers < ActiveRecord::Migration[5.2]
  def self.up
  	rename_column :users, :Ville, :city
  	rename_column :users, :Users, :school
  	rename_column :users, :Ecole, :country
  	rename_column :users, :Status, :status
  	rename_column :users, :Niveau, :level_class


  end
end
