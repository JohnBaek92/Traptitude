Rails.application.routes.draw do
  root 'static_pages#root'

  namespace :api, default: {format: :json} do
    resource :session, only: [:create, :destroy, :show]
    resources :users, only: [:create]
  end
end
