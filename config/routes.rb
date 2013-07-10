Uraspect::Application.routes.draw do

  mount_roboto

  root :to => "pages#index"

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'index' => 'pages#index'
  get ':slug' => 'pages#show', :as => :slug

  resources :pages
  resources :feedbacks, :only => :create
  resources :reviews, :only => :create
end
