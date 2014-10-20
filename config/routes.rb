FactoidTracker::Application.routes.draw do
  devise_for :users
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  resources :factoids

  get "home/index"

  match 'tagged' => 'factoids#tagged', :as => 'tagged'
  match '/tags' => 'tags#index'

  get 'tags/:tag', to: 'factoids#index', as: :tag

  root :to => 'home#index'

end
