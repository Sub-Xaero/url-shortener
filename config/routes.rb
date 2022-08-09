Rails.application.routes.draw do
  resources :shortenings
  get "/:key" => "redirects#show", as: :short
  root "shortenings#index"

end
