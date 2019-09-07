Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'adventures#index'
  resources :adventures do
    resources :places, only: [:index, :new, :create, :destroy, :show, :edit, :update]
  end



  resources :places do
    resources :addresses, only: [:index, :new, :create, :destroy, :show, :edit, :update]
  end

end
