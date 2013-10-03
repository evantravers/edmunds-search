EdmundsSearch::Application.routes.draw do
  root to: 'searches#search'
  post '/' => 'searches#api', as: 'api_path'
  resources :searches
end
