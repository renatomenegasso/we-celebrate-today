Rails.application.routes.draw do
  root to: 'date#show', defaults: { today: true }

  resources :holiday, path: 'feriado', only: [:show]

  get '/dia-:day-de-:month', to: 'date#show', as: :date
  get '/ontem', to: 'date#show', defaults: { yesterday: true }
  get '/amanha', to: 'date#show', defaults: { tomorrow: true }
  get '/:slug', to: 'holiday#show'
end
