class ApplicationController < ActionController::Base
		before_action :authenticate_user!
	  protect_from_forgery with: :exception

	  def after_sign_in_path_for(user)
	  	if current_user.talent_profile=='' || current_user.talent_profile.nil?
	  		new_talent_profile_path
	  	elsif current_user.talent_profile.username=='' || current_user.talent_profile.username.nil?
	  		edit_talent_profile_path
	  	else
	  		root_path
	  	end
	  end
end
