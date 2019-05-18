Rails.application.routes.draw do
  root "song_boards#index"
  get 'static_pages/memorial'

  resources :song_boards do
    resources :songs
  end

  resources :artists do
    resources :songs
  end
end
