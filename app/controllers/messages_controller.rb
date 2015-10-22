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
  
  #def update
    #if post_params[:title] != nil && post_params[:author] != nil && post_params[:content] != nil
      #Post.find(params[:id]).update(post_params)
      #redirect_to postshow_path(Post.find(params[:id]))
    #else
     # render :edit
    #end
  #end

  private
  def message_params
      params.require(:message).permit(:user_id, :content)
  end
end
