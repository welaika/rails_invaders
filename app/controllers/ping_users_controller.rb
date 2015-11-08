class PingUsersController < ApplicationController
  def create
    if current_user
      current_user.update(last_ping_at: Time.zone.now)
      respond_to do |format|
        format.json { render json: { currently_playing_count: User.currently_playing.count } }
      end
    else
      head :unprocessable_entity
    end
  end
end
