require 'pusher'

Pusher.logger = Rails.logger

Pusher.app_id = Figaro.env.pusher_app_id
Pusher.key = Figaro.env.pusher_key
Pusher.secret = Figaro.env.push_secret
