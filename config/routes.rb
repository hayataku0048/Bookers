Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'top' => 'homes#top'
resources :books
get 'books/:id' => 'books#show'
get 'books/:id/edit' => 'books#edit'

end
