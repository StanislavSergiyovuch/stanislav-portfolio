Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #default welcome-page
  root "pages#about"

  get 'about' => 'pages#about'

  resources :blogs, only: [:index, :create, :new, :show]


end
