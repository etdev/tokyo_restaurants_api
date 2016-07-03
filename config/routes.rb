Rails.application.routes.draw do
  namespace :v1 do
    resources :areas, only: [:index, :show] do
      resources :restaurants, only: [:index]
    end
    resources :restaurants, only: [:index, :show]
  end
end
