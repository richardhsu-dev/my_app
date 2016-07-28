Rails.application.routes.draw do

  get '/main/action1', to: 'main#action1'

  get '/main/action2', to: 'main#action2'

  get '/main/run', to: 'main#run'

  post '/main/run', to: 'main#run'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello';

  resource :setups
end
