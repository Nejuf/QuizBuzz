class PusherController < ApplicationController
  protect_from_forgery except: ['auth']

  def auth
    response = Pusher[params[:channel_name]].authenticate(params[:socket_id], {
      user_id: current_or_guest_user.id, # required
      user_info: {
        email: current_or_guest_user.email
      }
    })
    render json: response
  end
end
