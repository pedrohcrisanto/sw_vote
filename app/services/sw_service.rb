class SwService
  include HTTParty

  url = "https://swapi.dev/api/films?format=json"

  def import_data
    response = HTTParty.get(url)
    response.parsed_response
  end
end