Rails.application.routes.draw do
  get 'main/action1'

  get 'main/action2'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello';
end
