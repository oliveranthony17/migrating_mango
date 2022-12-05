Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }

  root to: "pages#home"


  resources :user_profiles, only: [:new, :create, :show, :edit, :update] do
    resources :user_tasks, only: [:index, :show, :update]
  end

  resources :countries, only: [:index, :show] do
    resources :topics, only: [:show] do
      resources :comments, only: [:create, :edit, :destroy, :new, :update]
    end

  end
end
