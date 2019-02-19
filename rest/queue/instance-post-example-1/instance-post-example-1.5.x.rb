require 'twilio-ruby'

# put your own credentials here
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new(account_sid, auth_token)

@queue = @client.api.queues('QU32a3c49700934481addd5ce1659f04d2').fetch

@queue.update(max_size: '123')

puts @queue.average_wait_time
