class CountriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @country = Country.find(params[:id])
    if params[:query].present?
      @topics = Topic.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @topics = Topic.where(country_id: @country.id)
    end
  end

  def index
  end
end
