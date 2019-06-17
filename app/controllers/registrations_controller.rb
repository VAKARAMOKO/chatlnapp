class RegistrationsController < Devise::RegistrationsController 
	before_action :configure_permitted_parameters, if: :devise_controller?


  
  protected

  def configure_permitted_parameters
	    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]# parameters autorize
	    added_attrs_account_update = [:username, :city, :country, :school, :status, :genre, :level_class, :mobile_number, :email, :password, :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar]#parametre autorize for account update
	    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs # sign in
	    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs #sign up
	    devise_parameter_sanitizer.permit :account_update, keys: added_attrs_account_update #account update
  end
	
	private # private for RegistrationController

	def sign_up_params 
		params.require(:user).permit(:username, :mobile_number, :email, :password, :password_confirmation)
	end

	def acount_update_params 
		params.require(:user).permit(:username, :city, :country, :school, :status, :genre, :level_class, :mobile_number, :email, :password, :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar)
	end

	
	

end

