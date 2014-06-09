Warden::Strategies.add(:guest_user) do
  def valid?
    session[:guest_user_id].present?
  end

  def authenticate!
    u = User.find(session[:guest_user_id])
    success!(u) if u.present?
  end
end