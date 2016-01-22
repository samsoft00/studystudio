class RegistrationsController < Devise::RegistrationsController
	before_action :configure_devise_permitted_parameters, if :devise_controller?

	private

	  def configure_devise_permitted_parameters
	  	
	  	if params[:action] == 'update'
				
				devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:title, :username, :first_name, :last_name, :bio, :avatar, :email, :password, :password_confirmation, :current_password) }

	  	elsif params[:action] == 'create'
	  			
				devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation) }
			end

	  end	

	end 


end