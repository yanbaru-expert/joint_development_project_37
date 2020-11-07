class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
    # message = Message.create!(message_params)
    # redirect_to message
  end

  private

  def message_params
    params.require(:message).permit(:name, :age)
  end
end
