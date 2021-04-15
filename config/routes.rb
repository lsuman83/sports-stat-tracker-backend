Rails.application.routes.draw do
  get '/current_user', to: 'current_user#index'
  resources :teams
  resources :game_stats
  resources :games
  resources :players
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'user/sessions',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
