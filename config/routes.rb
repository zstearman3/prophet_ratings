Rails.application.routes.draw do
  root 'static_pages#home'
  get 'schedule',       to: 'games#schedule'
  get 'schedule/:date', to: 'games#schedule'

  devise_for :users, skip: [:sessions, :registrations]

  devise_scope :user do
    # sessions
    get    'login',  to: 'devise/sessions#new',     as: :new_user_session
    post   'login',  to: 'devise/sessions#create',  as: :user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
   # registrations
    put    '/account',  to: 'devise/registrations#update'
    delete '/account',  to: 'devise/registrations#destroy'
    post   '/account',  to: 'devise/registrations#create'
    get    '/sign_up',  to: 'devise/registrations#new',    as: :new_user_registration
    get    '/account',  to: 'devise/registrations#edit',   as: :edit_user_registration
    patch  '/account',  to: 'devise/registrations#update', as: :user_registration
    get    '/account/cancel', to: 'devise/registrations#cancel', as: :cancel_user_registration
  end


  resources :teams, only: [:index, :show] do
    get 'roster', on: :member
  end

  resources :games, only: [:show] do
    get 'schedule', on: :collection
  end

end
