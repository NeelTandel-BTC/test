Rails.application.routes.draw do
  devise_for :users
  resources :tv_shows do
    get 'like_unlike'
  end
  resources :channels
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'tv_shows#index'
end
