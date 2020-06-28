Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  get "/like" => "home#like"
  get "/unlike" => "home#unlike"
end
