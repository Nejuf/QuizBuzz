QuizBuzz::Application.routes.draw do
  root to: "home#index"

  devise_for :users
  get '/guest_user_registration', to: 'users#guest_user_registration'

  #RESTful object routes
  [:users, :games, :teams].each do |resource_name|
    resources resource_name, only: [:index, :create, :show, :update, :destroy]
  end
end
