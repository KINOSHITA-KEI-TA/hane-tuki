class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all.page(params[:page]).per(10)
    @user = User.all
  end

  def new
    @message = Message.new
  end
  def create
    Message.create(message_params)
    redirect_to root_path
  end

  def destroy
    @message = Message.find(params[:id])
    if @message.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  def message_params
    params.require(:message).permit(:text,:image).merge(user_id: current_user.id)
  end
end
