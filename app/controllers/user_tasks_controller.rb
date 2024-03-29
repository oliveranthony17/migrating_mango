class UserTasksController < ApplicationController

  def new
    @task = Task.new
    @user_task = UserTask.new
  end

  def create
    # creates a Task instance that then creates a UserTask assigned to the user
    @task = Task.create(task_params)
    @user_task = UserTask.new({
      task: @task,
      user_profile: current_user.user_profile,
      status: "Active",
      order: 0
    })
    if @user_task.save
      redirect_to user_profile_user_tasks_path(current_user.user_profile)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @user_profile = UserProfile.find(current_user.user_profile.id)
    @tasks = UserTask.where(user_profile: current_user.user_profile)
    # @country = @tasks.first.task.country
    # @topic = @tasks.first.task.topic

    if params[:query].present?
      sql_query = <<~SQL
        (tasks.title ILIKE :query
         OR tasks.content ILIKE :query)
         AND user_tasks.user_profile_id = :user_profile_id
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
    @user_profile = current_user.user_profile
    @task = UserTask.find(params[:format])
    @task.status = "Active"
    @task.save
    redirect_back fallback_location: user_profile_user_tasks_path(@user_profile), alert: "Task marked as active!"
  end

  def upcoming
    @user_profile = current_user.user_profile
    @task = UserTask.find(params[:format])
    @task.status = "Upcoming"
    @task.save
    redirect_back fallback_location: user_profile_user_tasks_path(@user_profile), alert: "Task moved to upcoming!"
  end

  def complete
    @user_profile = current_user.user_profile
    @task = UserTask.find(params[:format])
    @task.status = "Completed"
    @task.save
    redirect_back fallback_location: user_profile_user_tasks_path(@user_profile), alert: "Congratulations! 🎉 Task completed!"
  end

  def update
    @task = UserTask.find(params[:id])
    @task.update(user_task_params)
    respond_to do |format|
      format.html { redirect_to user_profile_user_tasks_path(current_user.user_profile.id) }
      format.text { render partial: "user_tasks/task", locals: {task: @task}, formats: [:html] }
    end
  end

  private

  def user_task_params
    params.require(:user_task).permit(:status, :note)
  end

end
