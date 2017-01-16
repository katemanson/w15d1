class ShowsController < ApplicationController

  def index
    @shows = Show.all
    render :json => @shows
  end

  def create
    @show = Show.create( show_params )
    render :json => @show
  end

  private
  def show_params
    params.require(:title, :series, :description, :image, :programmeId)
  end

end