Notifier::Application.routes.draw do
  resources :posts do
    shallow do
      resources :comments, :except => [:index, :show]
    end
  end

  root :to => "posts#index"
end
