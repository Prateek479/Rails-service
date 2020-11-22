module Users
  class UserSerializer
    include RestPack::Serializer
    attributes :id, :email, :name, :username
  
  end
end