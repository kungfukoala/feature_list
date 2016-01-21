Rails.application.routes.draw do
  resources :features
  root "features#index"
end
