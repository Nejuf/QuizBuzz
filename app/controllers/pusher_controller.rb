class PusherController < ApplicationController
  protect_from_forgery except: ['auth']
   before_filter :authenticate_user!, except: :auth

  def auth
    if current_user
      response = Pusher[params[:channel_name]].authenticate(params[:socket_id], {
        user_id: current_user.id, # required
        user_info: {
          id: current_user.id.to_s,
          email: current_user.email
        }
      })
      render json: response
    else
      render json: {error: 'Unauthorized'}, :status => '403'
    end
  end
end
