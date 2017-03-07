Rails.application.routes.draw do

  devise_for :users, skip: [:registrations]
  root to: redirect('/users/sign_in')

  resources :processes, controller: 'judiciary_process'

  get '/processes/:id/schedule/', to: 'document_generator#schedule_hearing', as: 'schedule'
  get '/processes/:id/term/', to: 'document_generator#term_hearing', as: 'term'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
