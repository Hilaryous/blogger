Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login' => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
  #get({'pages/:id' => 'pages#show'})
end

#The router will provide two methods to us using that name,
#articles_path and articles_url.
#The _path version uses a relative path while the _url version uses the full URL with protocol, server, and path.
#The _path version is always preferred.
