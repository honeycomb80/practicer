Rails.application.routes.draw do

  get 'pages/splash'

  resources :rubyqs

  root 'pages#splash'

end
