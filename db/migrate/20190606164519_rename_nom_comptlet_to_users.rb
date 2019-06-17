class RenameNomComptletToUsers < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :users, :Sexe, :genre
    rename_column :users, :profile_image_id, :article_buy
    rename_column :users, :Nom_Complet, :username
    rename_column :users, :Telephone, :mobile_number
  end
end
