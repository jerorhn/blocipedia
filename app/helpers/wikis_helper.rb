module WikisHelper
  def user_is_authorized_for_delete?(wiki)
    current_user == wiki.user || current_user.admin?
  end

  def user_is_authorized_for_private?
    current_user.premium? || current_user.admin?
  end
end
