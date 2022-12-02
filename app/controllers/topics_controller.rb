class TopicsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @topics = Topic.find(params[:id])
  end

  def index
    # if params[:query].present?
    #   @topics = Topic.where("title ILIKE ?", "%#{params[:query]}%")
    # else
    #   @topics = Topic.all
    # end
  end
end
