Rails.application.routes.draw do

  devise_for :users
  get 'posts/index'
  root to: "posts#index"
  resources :posts, only: [:new, :create]

  ## table.htmlを追加
  get "posts/chair" => "posts#chair"
  get "posts/table" => "posts#table"
  get "posts/grill" => "posts#grill"
  get "posts/tent"  => "posts#tent"
end
