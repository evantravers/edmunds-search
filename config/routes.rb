EdmundsSearch::Application.routes.draw do
  root to: 'searches#new'
  post '/', to: 'searches#search', as: 'search'
end
