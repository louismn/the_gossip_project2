Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/', to: 'static_pages#home'
get '/new', to: 'gossip#new'
post '/gossip', to: 'gossip#index'

resources :gossip
end
