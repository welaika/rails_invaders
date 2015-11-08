class MatchDecorator < Draper::Decorator
  delegate_all

  def profile_image_tag
    return unless user.present?
    h.image_tag user.profile_image_url
  end

  def user_name
    user.try(:name) || "Anonymous"
  end
end
