class ProfilController < ApplicationController
  def index
  end

  def show
  	@user = User.find(params[:id])
  end

  def follow
  	@user = User.find(params[:id])
  	relation = Relationship.new(follower_id: current_user.id, followed_id: @user.id)
  	if relation.save
  		redirect_to show_profil_path @user
  	else
  		redirect_to root_path
  	end
  end
end

