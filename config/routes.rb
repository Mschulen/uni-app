Rails.application.routes.draw do
  root 'courses#index'
  resources :students
end
