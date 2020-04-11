Rails.application.routes.draw do


  root 'demo#index'

  get 'demo/index'
  get 'demo/hello'
  get 'demo/about'
  get 'demo/contact'

  # using ressourceful routes
  # does all shows in page
  resources :subjects do
    # will neeed to add the delete route
    member do
      get :delete
    end

    # whole collection
    collection do
      get :expert
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

end
