class AlbumsController < ApplicationController
  before_action :set_album, only: %i[ show edit update destroy ]
  before_action :user_is_logged
  before_action :set_global_artists

  def index
    @albums = Album.all
  end

  def show
  end

  def new
    @album = Album.new
    @artists = @artist_service.get_all 
  end

  def edit
    @artists = @artist_service.get_all
  end

  def create
    @album = Album.new(album_params)
    respond_to do |format|
      if @album.save
        format.html { redirect_to albums_url, notice: "Album was successfully created." }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to albums_url, notice: "Album was successfully updated." }
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if Current.user.role_id === 1
        @album.destroy
    
        format.html { redirect_to albums_url, notice: "Album was successfully destroyed." }
        format.json { head :no_content }
      else  
        format.html { redirect_to albums_url, notice: "You aren't allowed to perform this action." }
        format.json { head :no_content }
      end
    end    
  end

  private
    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params.require(:album).permit(:artist, :album_name, :year)
    end

    def user_is_logged
      if !Current.user
        redirect_to sign_in_path
      end    
    end

    def set_global_artists
      @artist_service = ArtistService.new
    end
end
