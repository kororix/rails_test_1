Rails.application.routes.draw do
  get '/forms', to: 'forms#index'
  resources :forms
end
