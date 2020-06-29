class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @movies = SwService.new.import_data["results"].sort_by {|hash| hash['episode_id'].to_i }
  end

  def like
    if User.find(current_user.id).likes.size < 2
      Like.create(user: current_user, episode_id: params[:episode_id])
      flash[:notice] = "Like Criado!"
    else
      flash[:alert] = "Voce só pode dar 2 likes!"
    end
    redirect_to root_path
  end

  def unlike
    Like.find_by(episode_id: params[:episode_id], user_id: current_user.id).destroy
    flash[:notice] = "Voce deu unlike!"
    redirect_to root_path
  end
end
