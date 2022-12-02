class UserTasksController < ApplicationController
  def update
  end

  def index
    @user_profile = UserProfile.find(params[:user_profile_id])
    @tasks = UserTask.where(user_profile: current_user.user_profile)

    if params[:query].present?
      sql_query = <<~SQL
        (tasks.title ILIKE :query
         OR tasks.content ILIKE :query)
         AND user_tasks.user_profile_id = :user_profile_id
        -- OR directors.first_name ILIKE :query
        -- OR directors.last_name ILIKE :query
      SQL
      @tasks = UserTask.joins(:task).where(sql_query, query: "%#{params[:query]}%", user_profile_id: params[:user_profile_id].to_i)
    else
      @tasks = UserTask.where(user_profile: current_user.user_profile)
    end

    @active_tasks = @tasks.where(status: "active")
    @upcoming_tasks = @tasks.where(status: "upcoming")
    @completed_tasks = @tasks.where(status: "completed")
  end

  def show
    @task = UserTask.find(params[:id])
  end
end
