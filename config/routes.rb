Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get root to: "homes#top"
  post '/books' => "books#create"
  get '/books' => "books#index"
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#show', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

end