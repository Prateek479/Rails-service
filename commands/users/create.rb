EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

module Users
  class Create < Mutations::Command
    required do
      string :email, matches: EMAIL_REGEX
      string :name
      string :username
      string :password
    end

    def execute
      user = User.new({
        'name': name,
        'email':  email,
        'username':  username,
        'password':  password,
      })
      user.save!
      user
    end
  end
end  
