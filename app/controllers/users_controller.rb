class UsersController < ApplicationController
    # def index 
    #     render json: User.all
    # end

    # def show 
    #     render json: find_user
    # end 
     
    # def create
    #     user = User.create!(user_params )
    #     render json: user, status: :created
    # end 

    # def update 
    #     user = find_user
    #     user.update!(user_params )
    #     render json: user, status: :ok
    # end 

    # def destroy
    #     user = find_user
    #     user.destroy
    #     head :no_content 
    # end 

    # private 

    # def find_user
    #     # User.find(params[:id])
    #     User.find_by(id: params[:id])
    # end 

    # def user_params 
    #     # params.permit(:username, :email, :password_digest)
    #     params.permit(:username, :email, :password_digest, :password_confirmation)
    # end

    
end
