Rails.application.routes.draw do
  devise_for :users
  resources :features do
    resources :comments
  end
  root "features#index"
end
