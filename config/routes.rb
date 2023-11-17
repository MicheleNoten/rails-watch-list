Rails.application.routes.draw do
  get 'reviews/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :new, :create, :show, :destroy] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: [:create]
  end

  resources :bookmarks, only: [:destroy]
end
