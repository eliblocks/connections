class Api::MessagesController < ActionController::API
  def create
    role = "user"
    user_id = params["message"]["from"]["id"].to_s
    text = params["message"]["text"]

    message = Message.new(role:, user_id:, text:)
    message.submit(:telegram)

    head :ok
  end
end
