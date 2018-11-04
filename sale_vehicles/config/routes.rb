Rails.application.routes.draw do
  %w( 404 422 500 ).each do |code|
    match "/#{code}", to: "errors##{code}", via: :all
  end

  root 'vehicles#index'
  resources :vehicles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
