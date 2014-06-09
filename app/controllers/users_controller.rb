class UsersController < ObjectController

  def guest_user_registration
    current_or_guest_user #generates guest user
    redirect_to '/'
  end
end
