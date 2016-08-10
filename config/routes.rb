Rails.application.routes.draw do

  get '/main/action1', to: 'main#action1'

  get '/main/run', to: 'main#run'

  get '/main', to: 'main#home'

  get '/help', to: 'main#help'

  get '/saliency', to: 'main#saliency'

  post '/main/run', to: 'main#run'

  post '/main', to: 'main#home'

  post '/main/saliency_result', to: 'main#saliency_result'

  post '/saliency', to: 'main#saliency_result'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main#home'

  resources :setups
end
