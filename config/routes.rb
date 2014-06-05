QuizBuzz::Application.routes.draw do
  root to: "home#index"

  devise_for :users

  resources :users, only: [:index, :show]
  resources :games, only: [:create]
end
