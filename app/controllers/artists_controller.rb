class ArtistsController < ApplicationController
  before_action :set_global_artists
  before_action :user_is_logged
  before_action :get_albums_by_artist_id

  def index        
    @artists = @artist_service.get_all  
  end

  def show
    artist_id = params[:id]
    @artists = @artist_service.get_by_id(artist_id)    
    @albums = @count_albums.filter_artist_album(artist_id)
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
  
  def get_albums_by_artist_id
    @count_albums = AlbumService.new
  end
  
  
end
