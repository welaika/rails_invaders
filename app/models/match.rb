class Match < ActiveRecord::Base
  belongs_to :user
  validates :user_id, :score, presence: true
end
