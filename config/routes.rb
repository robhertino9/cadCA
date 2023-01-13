Rails.application.routes.draw do
  resources :apis
  authenticated :user, ->(user) { user.admin? } do
    get 'admin', to: 'admin#index'
    get 'admin/books'
    get 'admin/users'
    get 'admin/show_book/:id', to: "admin#show_book", as: 'admin_book'
  end
  get 'search', to: 'search#index'
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/u/:id', to: 'users#profile', as: 'user'
  resources :books do
  end
  #get 'static_page/home'
  root to: 'static_page#home'
  #get 'static_page/books'
  get '/books', to: 'static_page#books'
  #get 'static_page/about'
  get '/about', to: 'static_page#about'
  #get 'static_page/contact'
  get '/contact', to: 'static_page#contact' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
