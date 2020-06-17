Rails.application.routes.draw do
  get '/' => 'login#index'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
