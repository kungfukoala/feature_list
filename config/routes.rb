Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :features do
    resources :comments
  end
  root "features#index"
end
