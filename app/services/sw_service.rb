class SwService
  include HTTParty

  def import_data
    response = HTTParty.get("https://swapi.dev/api/films?format=json")
    response.parsed_response
  end
end