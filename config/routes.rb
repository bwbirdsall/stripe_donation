TaxCheater::Application.routes.draw do
  resources :non_profits do
    resources :donations, only: [:new, :create]
  end
end
