Uraspect::Application.routes.draw do

  mount_roboto

  root :to => "pages#index"

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'jurisprudences' => 'jurisprudences#index'
  get 'index' => 'pages#index'
  get 'price_of_services' => 'pages#price_of_services'
  get ':slug' => 'pages#show', :as => :slug


  get 'jurisprudences/:id' => 'jurisprudences#show'

  resources :pages 
  resources :jurisprudences
  resources :feedbacks, :only => :create
end
