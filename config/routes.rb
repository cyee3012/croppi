Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :benchmark_pics do
    resources :final_pics, only: [:new, :create]
  end
  resources :final_pics, only: [:show, :edit, :update]
end
