class RenameAllTablesToCourses < ActiveRecord::Migration[5.2]
  def self.up
  	rename_column :courses, :titre,:title
  	rename_column :courses, :Niveau_Cours, :level_course
  	rename_column :courses, :Matiere_Course, :material_course
  end

  def add_column
  	add_column :courses, :description_course, :string 
  end
end


