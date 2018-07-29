Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  if Rails.env.development? and defined?(Localtower)
    mount Localtower::Engine, at: "localtower"
  end

  root 'posts#index'

end
