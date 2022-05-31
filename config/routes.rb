Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    #nested resource for reviews inside dog_houses
    resources :reviews, only: [:show, :index] #show and index are only available
  end

  resources :reviews, only: [:show, :index, :create]  #reviews has its own routes
end
