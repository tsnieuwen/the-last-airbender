class CharacterService

  def self.fetch_characters
    require "pry"; binding.pry
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=Fire+Nation")
    parsed = JSON.parse(response.body, symbolize_names:true)
    # data = []
    # (1..2).each do |page_num|
    #   response = conn.get('3/movie/top_rated') do |req|
    #     req.params['page'] = page_num.to_s
    #   end
    #   attributes = JSON.parse(response.body, symbolize_names: true)
    #   data += attributes[:results]
    # end
    # TopMovie.all_movies(data)
  end

end
