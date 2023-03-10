Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
  get 'about', to: 'pages#about'

  #gave an new article path, after creating an resources article. go to app, controllers, create new file, articles_controller.rb(always snake case)
  resources :articles

end
