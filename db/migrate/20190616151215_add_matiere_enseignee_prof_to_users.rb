class AddMatiereEnseigneeProfToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :matiere_prof, :string
  end
end
