class PingUsersController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.update(last_ping_at: Time.zone.now)

    respond_to do |format|
      format.json { render json: { currently_playing_count: User.currently_playing.count } }
    end
  end
end
