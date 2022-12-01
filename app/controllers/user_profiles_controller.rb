class UserProfilesController < ApplicationController
  def new
    @user_profile = UserProfile.new
  end

  def create
    @user_profile = UserProfile.new(profile_params)
    @user_profile.user = current_user
    @user_profile.save
    redirect_to country_path(Country.first)
  end

  def show
  end

  def edit
    @user_profile = current_user.user_profile
  end

  def update
  end

  private

  def profile_params
    params.require(:user_profile).permit(:foreign_address, :eu_status, :entry_method, :has_job_offer, :has_study_offer, :has_relative)
  end
end
