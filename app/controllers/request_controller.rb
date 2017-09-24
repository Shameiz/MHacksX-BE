class RequestController < ApplicationController
  def twilio
    send_text_message
  end

  def send_text_message
    recipient = params[:recipient]

    twilio_sid = "ACceb8722c8cb69f7c1a72e1c4039bef81"
    twilio_token = "119f7159d3aaaed1e15d7868e53936f2"
    twilio_phone_number = "6312379164"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.api.account.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => recipient,
      :body => "#{params[:message]}"
    )
  end
end
