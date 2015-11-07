class AppearanceChannel < ApplicationCable::Channel
  @@total_players_count = 0

  def subscribed
    stream_from "appearance_count"
  end

  def appear
    @@total_players_count += 1
    ActionCable.server.broadcast "appearance_count", total_players_count: @@total_players_count
  end
end
