class MessagesController < ApplicationController
	before_filter :authenticate_user!

	def index
    @messages = Message.order('created_at DESC').page(params[:page])
		@newmessage = Message.new
	end

	def new
		@messages = Message.new
	end

	def show
    @messages = Message.find(params[:id])
  end
  
  def messageposts
    @message = Message.find(params[:id])
  end
  
  def create
    @newmessage = Message.new(message_params)
    if @newmessage.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def edit
  end

  def followall
    @newmessage = Message.new

    followers_ids = current_user.followers.map { |user| user.id }
    @messages = Message.where(user_id: followers_ids).order('created_at DESC').page(params[:page])
    
  
  end

  private
  def message_params
      params.require(:message).permit(:user_id, :content)
  end
end
