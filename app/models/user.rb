class User < ActiveRecord::Base
  PING_TIMEOUT = Integer(ENV.fetch('PING_TIMEOUT'))

  has_many :matches, dependent: :destroy

  scope :currently_playing,
        -> { where('last_ping_at > :timestamp', timestamp: (User::PING_TIMEOUT * 3).seconds.ago) }

  scope :order_by_matches_count, -> { where.not(matches_count: nil).order(matches_count: :desc) }

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.token = auth['credentials']['token']

      auth_info = auth['info']
      user.name = auth_info['nickname']
      user.profile_image_url = auth_info['image']
    end
  end

  def best_rank
    sql = <<-SQL
    WITH matches_with_ranks AS (
      SELECT matches.*, rank() OVER (ORDER BY matches.score DESC) AS user_rank
      FROM matches
    )

    SELECT user_rank
    FROM matches_with_ranks
    WHERE matches_with_ranks.user_id = #{id}
    SQL

    ActiveRecord::Base.connection.select_value(sql).try(:to_i) || nil
  end
end
