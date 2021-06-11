Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [ :index, :show, :new, :create, :destroy ] do 
    resources :bookmarks, only: [ :new, :create ]
    # resources :movies, only: [ :index, :show, :new, :create, :edit]
  end
  resources :bookmarks, only: [ :destroy ]
  root to: "lists#index"
end
# localhost:3000/bookmarks
# localhost:3000/list/2/bookmarks