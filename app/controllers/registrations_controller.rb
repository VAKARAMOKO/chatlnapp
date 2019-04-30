class RegistrationsController < Devise::RegistrationsController 

	private

	def sign_up_params 
		params.require(:user).permit(:Nom_Complet, :Telephone, :email, :Status, :password, :password_confirmation)
	end

	def acount_update_params 
		params.require(:user).permit(:Nom_Complet, :Ville, :Ecole, :Telephone, :email, :password, :password_confirmation, :current_password)
	end

end
