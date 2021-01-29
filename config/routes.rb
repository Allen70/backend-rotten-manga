Rails.application.routes.draw do
  resources :user_ratings, only: [:index, :show, :create]
end
