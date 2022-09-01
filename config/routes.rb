Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'huddles/index'
      get 'huddles/show'
      post 'huddles/create', to: 'huddles#create'
      delete 'huddles/destroy', to: 'huddles#destroy'
    end
  end

  root 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
