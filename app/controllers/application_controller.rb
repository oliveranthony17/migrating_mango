class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protected

  def after_sign_in_path_for(resource)
    if user_sign_in?
      country_path(Country.find_by(name: "Switzerland"))
    else
      redirect_to home
    end
  end

  # def after_sign_out_path_for(resource)
  #   request.referrer
  # end
end
