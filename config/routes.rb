Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :welcomes

  12.times do |i|
    get "lists/index#{i+1}"
  end

  root 'welcomes#index'
end
