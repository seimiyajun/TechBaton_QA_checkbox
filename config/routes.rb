Rails.application.routes.draw do
  root to: 'members#index'
  resources :members
  resources :member_registrations
#  post 'member_registrations', to: 'member_registrations#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
