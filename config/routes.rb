Rails.application.routes.draw do
  get 'tasks/new'
  get 'tasks/create'
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }

  root to: "pages#home"

  resources :countries, only: [:index, :show] do
    resources :topics, only: [:show] do
      resources :tasks, only: [:new, :create]
    end
  end

  resources :user_profiles, only: [:new, :create, :show, :edit, :update] do
    resources :user_tasks, only: [:new, :create, :index, :show, :update] do
      collection do
        post :active
        post :upcoming
        post :complete
      end
    end
  end

end
