module Users
  class Find < Mutations::Command
    required do
      string :user_id
    end

    def execute
      User.where({
        'id': user_id
      })
    end
  end
end  
