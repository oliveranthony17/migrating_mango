Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  devise_for :users, controllers: {sessions: "sessions"}

  resources :user_profiles, only: [:show, :edit, :update] do
    resources :user_tasks, only: [:index, :show, :update]
  end

  resources :countries, only: [:index, :show] do
    resources :topics, only: [:show]
  end
end
