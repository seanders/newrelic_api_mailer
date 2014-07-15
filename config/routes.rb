APIMailer::Application.routes.draw do
  resource :mail, only: [:create], controller: :mail
  match "*path", to: "application#not_found", via: :all
end
