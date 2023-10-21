class UsersController < ApplicationController

before_action :move_to_index, except:[:show]

  def show
    @user = User.find(params[:id])
    @profile = @user.profile
    @occupation = @user.occupation
    @position = @user.position
    @prototypes = @user.prototypes
  end


  private

  def move_to_index
    unless user_signed_in?
    redirect_to root_path
    end 
  end
end
