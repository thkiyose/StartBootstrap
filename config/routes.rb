Rails.application.routes.draw do
  root to: "blogs#top"
  resources :blogs
  resources :users, only: %i(new create show)
  resources :sessions, only: %i(new create destroy)
  resources :favorites, only: %i(create destroy)
end
