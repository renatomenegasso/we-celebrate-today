Rails.application.routes.draw do
  resources :holiday, path: 'feriado', only: [:show]
end
