Rails.application.routes.draw do
  resources :amigos

resource:amigos
root 'amigos#index'

end
