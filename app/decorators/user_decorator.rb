class UserDecorator < Draper::Decorator
  delegate_all

  def profile_image_tag
    return if profile_image_url.blank?
    h.image_tag profile_image_url
  end

  def name
    user.try(:name) || "Anonymous"
  end
end
