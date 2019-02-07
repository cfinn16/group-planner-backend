Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get '/users/:id/groups', to: 'groups#show_groups'
      resources :comments
      resources :events
      resources :user_groups
      resources :groups
      resources :users

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
