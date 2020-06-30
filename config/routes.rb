Rails.application.routes.draw do
  get '/' => 'users#login_form'
  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  get 'home/top' => 'home#top'
  get 'users/index' => 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
