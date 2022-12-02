class UserProfilesController < ApplicationController
  def new
    @user_profile = UserProfile.new
  end

  def create
    @user_profile = UserProfile.new(profile_params)
    @user_profile.user = current_user
    if @user_profile.save
      create_user_tasks(@user_profile)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # Refactor below!

  def create_user_tasks(user_profile)
    if user_profile.eu_status?
      case user_profile.entry_method
      when "Work"
        if user_profile.has_job_offer?
          @user_tasks = Task.where(scope: ["work", "all"], eu: ["eu", "both"]).order(order: :asc)
        else
          @user_tasks = Task.where(scope: ["work", "work_find", "all"], eu: ["eu", "both"]).order(order: :asc)
        end
      when "Study"
        if user_profile.has_study_offer?
          @user_tasks = Task.where(scope: ["study", "all"], eu: ["eu", "both"]).order(order: :asc)
        else
          @user_tasks = Task.where(scope: ["study", "study_find", "all"], eu: ["eu", "both"]).order(order: :asc)
        end
      else # family
        if user_profile.has_relative?
          @user_tasks = Task.where(scope: ["family", "all"], eu: ["eu", "both"]).order(order: :asc)
        else
          @user_tasks = Task.where(scope: ["family", "family_find", "all"], eu: ["eu", "both"]).order(order: :asc)
        end
      end
    else
      case user_profile.entry_method
      when "Work"
        if user_profile.has_job_offer
          @user_tasks = Task.where(scope: ["work", "all"], eu: ["non-eu", "both"]).order(order: :asc)
        else
          @user_tasks = Task.where(scope: ["work", "work_find", "all"], eu: ["non-eu", "both"]).order(order: :asc)
        end
      when "Study"
        if user_profile.has_study_offer
          @user_tasks = Task.where(scope: ["study", "all"], eu: ["non-eu", "both"]).order(order: :asc)
        else
          @user_tasks = Task.where(scope: ["study", "study_find", "all"], eu: ["non-eu", "both"]).order(order: :asc)
        end
      else # family
        if user_profile.has_relative
          @user_tasks = Task.where(scope: ["family", "all"], eu: ["non-eu", "both"]).order(order: :asc)
        else
          @user_tasks = Task.where(scope: ["family", "family_find", "all"], eu: ["non-eu", "both"]).order(order: :asc)
        end
      end
    end
    @user_tasks.each do |task|
      UserTask.create({
        task: task,
        user_profile: user_profile,
        status: "upcoming"
      })
    end
    redirect_to user_profile_user_tasks_path(current_user.user_profile)
  end

  def show
  end

  def edit
    @user_profile = current_user.user_profile
  end

  # The edit method doesn't impact user tasks which I think is a good thing...? If they ticked "has a job offer" maybe it could delete the task "Apply for jobs"?

  def update
    @user_profile = current_user.user_profile
    if @user_profile.update(profile_params)
      redirect_to country_path(Country.first)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def profile_params
    params.require(:user_profile).permit(:foreign_address, :eu_status, :entry_method, :has_job_offer, :has_study_offer, :has_relative)
  end
end
