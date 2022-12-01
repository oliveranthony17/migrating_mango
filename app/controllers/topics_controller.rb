class TopicsController < ApplicationController
  def show
    @topics = Topic.find(params[:id])
  end
end
