class SearchController < ActionController::Base

  def index
    @nation = (params["nation"].gsub(/_/, ' ')).capitalize
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=Fire+Nation&perPage=500")
    @parsed = JSON.parse(response.body, symbolize_names:true)
    @show_members = @parsed[0..24]
    @total_members = @parsed.count
  end

end
