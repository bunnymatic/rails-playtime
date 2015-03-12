RailsPlaytime::Application.routes.draw do

  resources :tickets, only: [:index, :show]

  root to: 'pages#root'

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)

end
