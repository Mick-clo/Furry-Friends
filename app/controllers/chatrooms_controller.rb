class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: [:show]

  def show
    @message = Message.new
    @chatrooms = Chatroom.all
    @chatroom_new = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      redirect_to @chatroom
    else
      render :new
    end
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
