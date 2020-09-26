Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  mount Amministratore::Engine => "/amministratore"
end
