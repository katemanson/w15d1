class ShowsController < ApplicationController

  def index
    authenticate_user!
    shows = current_user.favourites
    render :json => shows
  end

  def show
    show = Show.find( params[:id] )
    render :json => show
  end

  def create
    show = Show.create( show_params )
    render :json => show, create: :status
  end

  private
  def show_params
    params.require(:show).permit([:title, :series, :description, :image, :programmeId])
  end

#? Not sure what this should do/look like?
  respond_to do |format|
    format.json { render json: shows }
  end

end