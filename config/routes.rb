Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :user_profiles, only: [:new, :create, :show, :edit, :update] do
    resources :user_tasks, only: [:index, :show, :update]
  end

  resources :countries, only: [:index, :show] do
    resources :topics, only: [:show]
  end
end
