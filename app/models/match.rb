class Match < ActiveRecord::Base
  UPDATE_INTERVAL = Integer(ENV.fetch("MATCH_UPDATE_INTERVAL"))

  belongs_to :user
  validates :user_id, :score, presence: true

  enum status: { pending: 0, started: 1, finished: 2 }
end
