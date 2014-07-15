APIMailer::Application.routes.draw do
  root to: 'application#home'
  resource :mail, only: [:create], controller: :mail
  match "*path", to: "application#not_found", via: :all
end
