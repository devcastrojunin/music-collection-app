class AlbumService
    def filter_artist_album(artist_id)
        Album.all.where("artist = #{artist_id}")
    end    
end