Rails.application.routes.draw do
  resources :images
  root to: "pages#root"

  resource :drawer
end
