Rails.application.routes.draw do
  root to: 'members#index'
  resources :members, only: [:index, :show, :edit, :update, :destroy]
  resources :member_registrations, only: [:new, :create]
#  post 'member_registrations', to: 'member_registrations#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
