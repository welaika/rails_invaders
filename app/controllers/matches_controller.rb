class MatchesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @top_matches = Match.order_by_score.limit(20)
    @top_users = User.order_by_matches_count.limit(20)
  end

  def new
    @match = Match.new(user_id: current_user.id)
  end

  def create
    @match = Match.new(user_id: current_user.id)
    if @match.save
      redirect_to match_path(@match, anchor: "game")
    else
      redirect_to root_path, alert: "Something went wrong creating a new match"
    end
  end

  def show
    @match = Match.find(params[:id])
    if @match.pending?
      @match.started!
      render :play
    else
      @match.finished!
      render :recap
    end
  end

  def update
    @match = current_user.matches.find(params[:id])
    if @match.started?
      @match.update(match_params) ? head(:ok) : head(:unprocessable_entity)
    else
      head :forbidden
    end
  end

  private

  def match_params
    params.require(:match).permit(:score, :status)
  end
end
