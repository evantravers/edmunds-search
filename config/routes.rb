EdmundsSearch::Application.routes.draw do
  root to: 'searches#new'
  post '/', to: 'searches#search', as: 'search'
  resources :searches do
    get 'save' => 'search#save'
  end
end
