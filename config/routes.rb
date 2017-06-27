Rails.application.routes.draw do
  root 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:create]
    resources :albums, only: [:index, :show]
    resources :tracks, only: [:show]
    resources :annotations, only: [:show, :create, :destroy, :update]
  end
end
