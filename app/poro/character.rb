class Character
  attr_reader :api_id,
              :title,
              :summary,
              :runtime,
              :vote_average,
              :genres,
              :hours,
              :minutes,
              :poster

  def initialize(data)
    @api_id = data[:id]
    @title = data[:title]
    @summary = data[:overview]
    @hours = (data[:runtime] / 60)
    @minutes = (data[:runtime] % 60)
    @runtime = data[:runtime]
    @vote_average = data[:vote_average]
    @genres = data[:genres]
    @poster = data[:poster_path]
  end
end
