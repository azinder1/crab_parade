Rails.application.routes.draw do
  devise_for :users
  root to: "landing#index"

  resources :products do
    resources :reviews
  end
end
