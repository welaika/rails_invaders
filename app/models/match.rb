class Match < ActiveRecord::Base
  validates :user, :score, presence: true
end
