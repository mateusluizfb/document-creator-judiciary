Rails.application.routes.draw do

  devise_for :users, skip: [:registrations]
  root to: redirect('/users/sign_in')

  resources :processes, controller: 'judiciary_process'

  post '/processes/schedule/', to: 'document_generator#schedule_hearing'
  post '/processes/term/', to: 'document_generator#term_hearing'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
