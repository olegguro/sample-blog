Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# only - ключ с методами 
resource :contacts, only: [:new, :create]
resources :articles

end

