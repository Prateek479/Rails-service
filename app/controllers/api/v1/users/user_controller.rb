require 'bcrypt'

module Api
  module V1
    module Users
      class UserController < DeviseTokenAuth::RegistrationsController
        # skip_before_action :verify_authenticity_token, :only => :new

        def create
          user = ::Users::Create.run!(params.to_unsafe_h)
          render json: ::Users::UserSerializer.as_json(user)
        end

        def find
          user = ::Users::Find.run!(params.to_unsafe_h)
          render json: ::Users::UserSerializer.as_json(user.first)
        end
      end
    end  
  end
end
