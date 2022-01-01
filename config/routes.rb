Rails.application.routes.draw do
  resources :channels do
    resources :messages, only: :create
  end
  root "channels#index"
end
