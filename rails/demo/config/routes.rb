Rails.application.routes.draw do
  get "/home", to: "home#index"
  get "/hello", to: "hellos#index"
end
