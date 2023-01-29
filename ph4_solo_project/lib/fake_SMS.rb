class FakeSMS
  # include Twilio - RSpec throws an error
  def initialize(account_sid, auth_token)
    @client = Twilio::REST::Client.new(account_sid, auth_token)
    @account_sid = account_sid
    @auth_token = auth_token
  end
  
  def send_SMS(to)
    eta = Time.new + 20*60
    text = "Thank you! Your order was placed and will be delivered before"
    body = "#{text} #{eta.strftime("%I:%M")}"
    @client.messages.create(to: to, from: "+4473335554445", body: body)
  end
end