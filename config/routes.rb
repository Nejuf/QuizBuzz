QuizBuzz::Application.routes.draw do
  root to: "home#index"

  devise_for :users

  resources :users, only: [:index, :create, :show, :update, :destroy]
  resources :games, only: [:index, :create, :show, :update, :destroy]
end
