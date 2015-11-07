class User < ActiveRecord::Base
  TIMEOUT = 40

  has_many :matches

  scope :currently_playing, -> { where('last_ping_at > :timestamp', timestamp: User::TIMEOUT.seconds.ago) }

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.token = auth['credentials']['token']
      user.name = auth['info']['name'] || "" if auth['info']
    end
  end
end
