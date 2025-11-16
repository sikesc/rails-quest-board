Rails.application.routes.draw do
  get 'parties/new'
  get 'quests/index'
  get 'quests/show'
  get 'quests/new'
  root to: "quests#index"
  resources :quests, only: [:index, :show, :create, :new, :destroy] do
    resources :parties, only: [:new, :create]
  end
  resources :parties, only: [:destroy]
end
