Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root "welcome#index"
  # get 'welcome/index'
  resources :teachers
  resources :courses

end
