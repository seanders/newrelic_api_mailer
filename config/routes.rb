APIMailer::Application.routes.draw do
  resource :mail, only: [:create]
end
