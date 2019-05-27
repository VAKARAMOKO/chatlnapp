class AddMatiereCoursToCourses < ActiveRecord::Migration[5.2]
  def change
  	add_column :courses, :Matiere_Course, :string
  end
end
