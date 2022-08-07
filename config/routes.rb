Rails.application.routes.draw do
  root to: "pages#root"

  resource :drawer
end
