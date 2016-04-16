Rails.application.routes.draw do

  scope "(:locale)", locale: /en|fi/ do
    resources :regions
    resources :municipalities
    resources :users

    # alternative path to registering
    get 'signup', to: 'users#new'

    resource :session, only: [:new, :create, :delete]

    # alternative paths to loggin in and out
    get 'signin', to: 'sessions#new'
    delete 'signout', to: 'sessions#destroy'
  end

  # root with locale
  get '/:locale' => 'regions#index'

  root 'regions#index'
end
