Rails.application.routes.draw do

  # get 'welcome/index'

  resources :articles

  root 'welcome#index'
  # get 'articles/new'

end
