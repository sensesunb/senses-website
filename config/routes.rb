Rails.application.routes.draw do

  root                'posts#index'
  get    'about'   => 'static_pages#about'
  get    'contact' => 'static_pages#contact'
  get    'team'    => 'static_pages#team'
  get    'projects'=> 'static_pages#projects'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users

  resources :posts do
    resources :comments
  end
end
