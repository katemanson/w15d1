class ShowsController < ApplicationController

  def index
    @shows = Show.all
    render :json => @shows
  end

  def show
    show = Show.find( params[:id] )
    render :json => show
  end

  def create
    @show = Show.create( show_params )
    render :json => @show, create: :status
  end

  private
  def show_params
    params.require(:show).permit([:title, :series, :description, :image, :programmeId])
  end

end