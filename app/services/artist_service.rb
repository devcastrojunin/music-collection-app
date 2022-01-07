
class ArtistService
    include HTTParty

    base_uri 'https://moat.ai/api/task/'

    def initialize
        @options = { headers: { 'Basic' => 'ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ==' } }
    end

    def get_all
        self.class.get('/', @options)
    end

    def get_by_id(artist_id)
        self.class.get("/?artist_id=#{artist_id}", @options)
    end
    
end