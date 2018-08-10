Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  post '/tinymce_assets' => 'tinymce_assets#create'
  get "wow" => "tinymce_assets#wow"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
