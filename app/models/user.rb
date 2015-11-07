class User < ActiveRecord::Base
  has_many :matches

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.token = auth['credentials']['token']
      user.name = auth['info']['name'] || "" if auth['info']
    end
  end
end
