class SwService
  include HTTParty

  END_POINT = "https://swapi.dev/api/films?format=json"

  def import_data
    response = HTTParty.get(END_POINT)
    response.parsed_response
  end
end