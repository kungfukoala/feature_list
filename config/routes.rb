Rails.application.routes.draw do
  resources :features do
    resources :comments
  end
  root "features#index"
end
