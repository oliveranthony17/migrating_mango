class CommentsController < ApplicationController

  def new
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.build
  end

  def create
    @comment = UserProfile.new(comment_params)
    @comment.user = current_user
    if @comment.save
      create_user_comment(@comment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def comment_params
    params.require(:comment).permit(:topic_id, :user_id, :content, :title)
  end


end
