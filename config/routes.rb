Rails.application.routes.draw do
  get "/" => "home#top"

  post "users/create" =>"users#create"
  get 'users/index' => "users#index"
  get 'benchmarks/index' => "benchmarks#index"
  get "users/login" => "users#login_form"
  get "users/new" => "users#new"
  post "users/login" => "users#login"
  post "users/logout" => "users#logout"
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
