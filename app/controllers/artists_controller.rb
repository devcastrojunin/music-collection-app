class ArtistsController < ApplicationController
  before_action :set_global_artists
  before_action :user_is_logged

  def index        
    @artists = @artist_service.get_all    
  end

  def show
    @artists = @artist_service.get_by_id(params[:id])    
  end
  
  private 
  
  def set_global_artists
    @artist_service = ArtistService.new
  end
  
  def user_is_logged
    if !Current.user
      redirect_to sign_in_path
    end    
  end
  
end
