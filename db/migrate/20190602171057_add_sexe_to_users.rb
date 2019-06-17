class AddSexeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Users, :string
    add_column :users, :Sexe, :string
  end
end
