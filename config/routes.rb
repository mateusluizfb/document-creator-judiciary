Rails.application.routes.draw do

  devise_for :users, skip: [:registrations]
  root to: redirect('/users/sign_in')

  get '/processes', to: 'judiciary_process#index'
  get '/processes/new', to: 'judiciary_process#new'
  post '/processes/create', to: 'judiciary_process#create' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
