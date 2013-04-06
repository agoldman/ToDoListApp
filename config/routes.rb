TodoApp::Application.routes.draw do
  root to: "teams#index"
  resources :projects do
    resources :items, :only => [:index]
  end
  resources :items, :except => [:index]
  resources :users
  resources :teams do
    resources :projects, :only => [:new, :edit, :show]
  end
end
