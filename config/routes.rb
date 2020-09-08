Rails.application.routes.draw do
  devise_for :users, :skip => [:registration, :passwords, :sessions, :confirmation]
  namespace :api, default: {format: 'json'} do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
end
