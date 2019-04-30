class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :Nom_Complet, :string
  	add_column :users, :Ville, :string
  	add_column :users, :Ecole, :string
  	add_column :users, :Niveau, :integer
  	add_column :users, :Status, :binary
  	add_column :users, :Telephone, :integer
  	add_index :users, :Telephone, unique: true
  end
end
