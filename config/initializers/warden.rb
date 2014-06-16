Warden::Strategies.add(:guest_user) do
  def valid?
    session[:guest_user_id].present?
  end

  def authenticate!
    u = User.find(session[:guest_user_id])
    success!(u) if u.present?
  end
end

Warden::Manager.after_set_user do |user,auth,opts|
  auth.cookies[:current_user_id] = user.id.to_s
end

Warden::Manager.before_logout do |user,auth,opts|
  auth.cookies.delete :current_user_id
end
