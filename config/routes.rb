Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root :to => 'books#top'
    get 'books' =>'books#index'
    post 'books' => 'books#create'
    get 'books/:id/show' => 'books#show', as: 'show_book'
    get 'books/:id/edit' => 'books#edit', as: 'edit_book'
    patch 'books/:id' => 'books#update', as: 'update_book'
    put 'books/:id' => 'books#update'
    post "books/:id/update" => 'books#update'
    delete 'books/:id' => 'books#destroy', as: 'destroy_book'
    resources :books, only:[:index, :show]
end