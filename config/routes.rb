Rails.application.routes.draw do

  devise_for :users, skip: [:registrations]
  root to: redirect('/users/sign_in')

  get '/processes', to: 'judiciary_process#index'
  post '/processes', to: 'judiciary_process#create'
  delete '/processes/:id', to: 'judiciary_process#destroy', as: 'delete_process'
  get '/processes/new', to: 'judiciary_process#new'

  post '/processes/schedule/', to: 'document_generator#schedule_hearing'
  post '/processes/term/', to: 'document_generator#term_hearing'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
