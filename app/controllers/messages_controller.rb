class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all.page(params[:page]).per(10).order(created_at: :desc)
    @user = User.all
  end

  def new
    @message = Message.new
  end
  def create
    Message.create(message_params)
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
    @message = Message.where(user_id: @user.id).all.page(params[:page]).per(10)
    # @messages = Message.all.page(params[:page]).per(10)
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
