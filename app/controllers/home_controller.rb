class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @movies = SwService.new.import_data["results"].sort_by {|hash| hash['episode_id'].to_i }
  end
end
