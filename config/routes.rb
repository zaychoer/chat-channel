Rails.application.routes.draw do
  resources :channels
  root "channels#index"
end
