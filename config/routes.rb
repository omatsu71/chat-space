Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :groups, only: [:index,:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
  resources :users, only: [:index, :edit, :update] do
  end
end


# root to: "messages#index"
# resources :users, only: [:edit, :update]
# resources :groups, only: [:new, :create, :edit, :update]