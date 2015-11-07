class Match < ActiveRecord::Base
  belongs_to :user
  validates :user_id, :score, presence: true

  enum status: { pending: 0, started: 1, finished: 2 }
end
