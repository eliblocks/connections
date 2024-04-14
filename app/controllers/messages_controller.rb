class MessagesController < ApplicationController
  def create
    role = "user"
    user_id = params["message"]["from"]["id"].to_s
    text = params["message"]["text"]

    message = Message.new(role:, user_id:, text:)
    message.submit

    redirect_to messages_path
  end

  def index
    @threads = Message.threads
  end
end
