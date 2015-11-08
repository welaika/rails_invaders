class UserRanksController < ApplicationController
  before_action :authenticate_user!

  def show
    render json: { user_rank: current_user.best_rank }
  end
end
