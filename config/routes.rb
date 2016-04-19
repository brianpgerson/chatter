Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :messages, only: [:create]
  end
  resources :messages, only: [:index]
  resources :hashtags, only: [:show]
end
