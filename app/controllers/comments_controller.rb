class CommentsController < ApplicationController
  def index
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.new(comment_params)
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to country_topic_path(@topic.country, @topic) }
        format.turbo_stream
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def edit
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.find(params[:id])

    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to country_topic_path(@topic.country, @topic) }
        format.turbo_stream
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.find(params[:id])

    @comment.destroy

    respond_to do |format|
      format.html { redirect_to country_topic_path(@topic.country, @topic) }
      format.turbo_stream
    end


  end

  def comment_params
    params.require(:comment).permit(:topic_id, :user_id, :country_id, :content, :title)
  end


end
