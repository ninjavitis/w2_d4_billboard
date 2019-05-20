Rails.application.routes.draw do
  root "song_boards#index"
  get 'static_pages/memorial'
  get '/song_boards/:id/songs', to: 'songs#board_index'
  devise_for :users


  resources :song_boards do
    resources :songs
  end

  resources :artists do
    resources :songs
  end

end
