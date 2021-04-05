Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope module: 'publishers' do
    resources :contacts, only: [:new, :create]
  end
end
