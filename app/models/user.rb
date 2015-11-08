class User < ActiveRecord::Base
  PING_TIMEOUT = Integer(ENV.fetch('PING_TIMEOUT'))

  has_many :matches

  scope :currently_playing, -> { where('last_ping_at > :timestamp', timestamp: User::PING_TIMEOUT.seconds.ago) }

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.token = auth['credentials']['token']
      user.name = auth['info']['nickname'] || "" if auth['info']
    end
  end
end
