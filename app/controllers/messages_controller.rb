class MessagesController < ApplicationController
  before_action :set_channel, only: %i[create]

  def create
    channel.messages.create(messages_params.merge(author: "unknown"))
    render partial: "messages/form"
  end

  private
    def set_channel
      @channel = Channel.find(params[:channel_id])
    end

    def messages_params
      params.require(:message).permit(:content)
    end
end