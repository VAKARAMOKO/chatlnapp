class AddNiveauCoursToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :Niveau_Cours, :string
  end
end
