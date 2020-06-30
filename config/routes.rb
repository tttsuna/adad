Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'application#hello'
  get "/" => "application#hello"
  get "/goodbye" => "application#good_bye"
  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
end
