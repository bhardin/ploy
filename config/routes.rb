Ploy::Application.routes.draw do
  resources :candidates
  root :to => "candidates#index"
end
