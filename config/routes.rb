Rails.application.routes.draw do

  root                      'static_pages#landing'
  get     '/blog'	 => 'posts#index'
  get     '/signup'  => 'users#new'
  get     '/login'   => 'sessions#new'
  post    '/login'   => 'sessions#create'
  get	  '/logout'  => 'sessions#destroy'
  
  resources :posts do
    resources :comments
  end
end
