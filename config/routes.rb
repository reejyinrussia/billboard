Rails.application.routes.draw do
  root 'charts#index'
  resources :charts do
    resources :songs
  end

  scope 'songs/:song_id', as: 'song' do
    resources :artists, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
