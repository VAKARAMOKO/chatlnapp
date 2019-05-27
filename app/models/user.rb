class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   #PROF DE MATIERE XX
 # MATIERES = [ "Histoire","Géographie","Math","Physique", "Chimie","SVT","Français","Anglais","Philosophie","EDHC","Allemand","Espagnol","Entreprenariat","Art-Plastique"]
   
  has_many :questions
  has_many :course
  #mount_uplaoder :avatar, AvatarUploader
end
