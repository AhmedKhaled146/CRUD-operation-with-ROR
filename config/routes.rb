Rails.application.routes.draw do
  # get 'admins/index'
  # get 'admins/show'
  # get 'admins/new'
  # get 'admins/edit'
  # get 'admins/destroy'
  resources :admins
  resources :users
  get 'manage/index'
  get 'manage/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "manage#home"
end
