Rails.application.routes.draw do
  resources :blogs
  root to: "blogs#top"
end
