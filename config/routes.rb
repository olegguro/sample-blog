Rails.application.routes.draw do
  get 'home/index'

  get 'terms' => 'pages#terms'

  get 'about' => 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # only - ключ с методами 
resource :contacts, only: [:new, :create], path_name: [:new => '']
resources :articles do
  resources :comments
end
end