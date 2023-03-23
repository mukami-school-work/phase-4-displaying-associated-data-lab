class UsersController < ApplicationController
    def show
        users = User.find(params[:id])
        render json: users, include: :items
    end
end

# class UsersController < ApplicationController
#   def show
#     user = User.find(params[:id])
#     items = user.items
#     render json: { user: user, items: items }
#   end
# end

