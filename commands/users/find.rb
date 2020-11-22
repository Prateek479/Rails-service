module Users
  class Find < Mutations::Command
    required do
      string :user_id
    end

    def execute
      User.where({
        '_id': user_id
      })
    end
  end
end  
