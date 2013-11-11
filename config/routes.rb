Motivation::Application.routes.draw do
  resources :motivators

  root :to => 'motivators#index'

end
