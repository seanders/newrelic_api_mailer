APIMailer::Application.routes.draw do
  resource :mail, only: [:create], controller: :mail
  match "*", to: "application#not_found", via: :all
end
