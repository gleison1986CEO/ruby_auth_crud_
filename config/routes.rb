Rails.application.routes.draw do
  get '/' => 'users#index'
  get '/cadastre-se' => 'users#cadastre-se'
  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  get '/painel_admin_testes' => 'tabelas#index'
  get '/sair' => 'sessions#destroy'
  resources :tabelas
end
