Rails.application.routes.draw do
  resources :projects, only: [:index, :show, :new, :create] do
    resources :comments, only: [:create]
    resources :status_changes, only: [:create]
  end

  root "projects#index"
end
