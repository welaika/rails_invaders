class Match < ActiveRecord::Base
  MATCH_UPDATE_INTERVAL = Integer(ENV.fetch("MATCH_UPDATE_INTERVAL"))
  LEADERBOARD_UPDATE_INTERVAL = Integer(ENV.fetch("LEADERBOARD_UPDATE_INTERVAL"))

  belongs_to :user, counter_cache: true
  validates :user_id, :score, :status, presence: true
  validates :score, numericality: { only_integer: true }

  enum status: { pending: 0, started: 1, finished: 2 }

  scope :order_by_score, -> { order(score: :desc) }
end
