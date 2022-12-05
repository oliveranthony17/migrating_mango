class UserTasksController < ApplicationController

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

    @active_tasks = @tasks.where(status: "Active")
    @upcoming_tasks = @tasks.where(status: "Upcoming")
    @completed_tasks = @tasks.where(status: "Completed")
  end

  def show
    @task = UserTask.find(params[:id])
  end

  def active
    @task = UserTask.find(params[:format])
    @task.status = "Active"
    @task.save
  end

  def upcoming
    @task = UserTask.find(params[:format])
    @task.status = "Upcoming"
    @task.save
  end

  def complete
    @task = UserTask.find(params[:format])
    @task.status = "Completed"
    @task.save
  end

  def update
    @task = UserTask.find(params[:id])
    @task.update(user_task_params)

    respond_to do |format|
      format.html { redirect_to user_profile_user_tasks_path(current_user.user_profile) }
      format.text { render partial: "user_tasks/task", locals: {task: @task}, formats: [:html] }
    end
  end

  private

  def user_task_params
    params.require(:user_task).permit(:status, :note)
  end
end
