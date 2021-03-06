Rails.application.routes.draw do
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations:  'api/v1/users/user'
      }

      get 'users/:user_id', action: :find, controller: 'users/user'
    end
  end  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
