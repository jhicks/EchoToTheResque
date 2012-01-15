EchoToTheResque::Application.routes.draw do
  resources :echos, :only => [:index, :create]

  root :to => 'echos#index'
end
