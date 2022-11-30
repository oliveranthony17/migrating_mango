class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_up_path_for(resource)
    redirect_to user_profile_user_tasks(current_user)
  end
end
