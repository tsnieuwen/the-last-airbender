class SearchController < ActionController::Base

  def index
    @nation = (params["nation"].gsub(/_/, ' ')).capitalize
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=Fire+Nation&limit=100")
    parsed = JSON.parse(response.body, symbolize_names:true)
    @total_members = parsed.count
    require "pry"; binding.pry
  end

end
