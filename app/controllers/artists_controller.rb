class ArtistsController < ApplicationController
  def index    
    if !Current.user
      redirect_to sign_in_path
    end
    
  end
end
