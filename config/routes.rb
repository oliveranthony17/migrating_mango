Rails.application.routes.draw do
  get 'user_tasks/update'

  resources: :user_profiles, only: [:show, :edit, :update] do
    resources: :user_tasks, only: [:index, :show, :update]
  end

  resources: :countries, only: [:index, :show] do
    resources: :topics, only: [:show]
  end

  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
