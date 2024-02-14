class MessagesController < ApplicationController
  before_action :set_chatroom
  before_action :set_message, only: [:destroy]

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        message: render_to_string(partial: "messages/message", locals: { message: @message }),
        sender_id: @message.user.id
      )
      head :ok
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  def destroy
    if current_user.admin?
      @message.destroy
      redirect_to chatroom_path(@message.chatroom), status: :see_other
    else
      render json: { error: "Not authorized" }, status: :unauthorized

    end

  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
  end

  def set_message
    @message = @chatroom.messages.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
