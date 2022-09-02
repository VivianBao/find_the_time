Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      get 'huddles/index'
      get 'huddles/show'
      post 'huddles/create', to: 'huddles#create'
      delete 'huddles/destroy', to: 'huddles#destroy'
    end
  end

  root 'homepage#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get 'user/:id', to: 'users/registrations#detail'
    get 'signup', to: 'users/registrations#new'
    get 'login', to: 'users/sessions#new'
    get 'logout', to: 'users/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
