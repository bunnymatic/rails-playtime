Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/partials_collection", to: "pages#partials_collection"
  get "/partials", to: "pages#partials"
  get "/view_components", to: "pages#view_components"
  get "/rcode5_collection", to: "pages#rcode5_collection"
  root to: "pages#root"
end
