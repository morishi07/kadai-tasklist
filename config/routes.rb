Rails.application.routes.draw do
  #get 'toppages/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

	#root to: 'tasks#index'
	root to: 'toppages#index'
	
  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'
	
	get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  
  resources :tasks
  resources :users, only: [:index, :show, :new, :create] do
    member do
      get :ngs
    end
  end
end
