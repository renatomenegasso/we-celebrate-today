Rails.application.routes.draw do
  root to: 'holiday#show', defaults: { today: true }

  resources :holiday, path: 'feriado', only: [:show]
  get '/:slug', to: 'holiday#show'
end
