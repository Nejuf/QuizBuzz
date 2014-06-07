class GamesController < ObjectController

  def create
    params[:game][:moderator_id] = current_user.id.to_s
    super()
  end
end
