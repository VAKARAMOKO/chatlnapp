class Course < ApplicationRecord
	belongs_to :user
	 #PROF DE MATIERE XX
 	MATIERES = [ "Histoire","Géographie","Math","Physique", "Chimie","SVT","Français","Anglais","Philosophie","EDHC","Allemand","Espagnol","Entreprenariat","Art-Plastique"]
	NIVEAUX =["Tous", "6e","5e", "4e","3e","2nd C", "2nd A","1ère A","1ère D", "1ère C", "Tle A","Tle D", "Tle C"]
end
