Rails.application.routes.draw do
  devise_for :users
  # get 'prototypes/index'
  root to: "prototypes#index"
  # root_pathと記載した時にどこに飛ばすか
  
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
