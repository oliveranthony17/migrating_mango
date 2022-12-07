class CountriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @country = Country.find(params[:id])
    if params[:query].present?
      sql_query = "title ILIKE :query AND country_id = :country_id"
      @topics = Topic.where(sql_query, query: "%#{params[:query]}%", country_id: @country.id)
    else
      @topics = Topic.where(country_id: @country.id)
    end
  end

  def index
  end
end
