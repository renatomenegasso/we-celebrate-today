Rails.application.routes.draw do
  root to: 'date#show', defaults: { today: true }

  resources :holiday, path: 'feriado', only: [:show]

  get '/dia-:day-de-:month', to: 'date#show', as: :date
  get '/:slug', to: 'holiday#show'
end
