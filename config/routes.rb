Rails.application.routes.draw do
  resources :folios
  

  #Se crea el namespace para el api y se le indica que se usara el formato json en las peticiones
  namespace :api, defaults: {format: "json"} do
    namespace :v1 do
      resources :folios  
      get 'check/folio'    
    end
  end
end
