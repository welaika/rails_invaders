class MatchesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @match = Match.new(user_id: current_user.id)
    if @match.save
      redirect_to @match
    else
      redirect_to root_path, alert: "Something went wrong creating a new match"
    end
  end

  def show
    @match = Match.find(params[:id])
  end
end
