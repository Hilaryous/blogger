Rails.application.routes.draw do
  resources :articles
end

#The router will provide two methods to us using that name,
#articles_path and articles_url.
#The _path version uses a relative path while the _url version uses the full URL with protocol, server, and path.
#The _path version is always preferred.
