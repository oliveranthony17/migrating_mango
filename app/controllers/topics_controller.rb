class TopicsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @country = Country.find(params[:country_id])
    @topic = Topic.find(params[:id])
    # @comment = @topic.comments.new
  end
end
