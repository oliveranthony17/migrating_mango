class TopicsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @topics = Topic.find(params[:id])
  end
end
