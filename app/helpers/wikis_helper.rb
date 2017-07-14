module WikisHelper
  def user_is_authorized_for_wiki?(wiki)
    current_user && (current_user == wiki.user || current_user.admin?)
  end

  def user_is_authorized_for_private_wiki?(wiki)
    current_user.admin? || !wiki.private || current_user == wiki.user || wiki.collaborators.exists?('email' => current_user.email)
  end
end
