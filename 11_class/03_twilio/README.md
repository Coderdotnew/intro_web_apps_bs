# twilio
The Twilio API makes it possible to send SMS text messages (text only) and MMS media messages (media) from a web application! Twilio provides a phone number and the technology to submit data via SMS or MMS messaging. Sending a message 'POST's to their messages resources that requires a phone number that receives the message. Let's walk through how to use the Twilio gem API wrapper.  
![1](http://i.imgur.com/B1sVSyb.gif)  

# require
First, we need to `require` the twilio gem. This will go in the `gemfile` if we are working with the Sinatra framework, or it can go at the top of a Ruby file if we want to run this API in the Terminal.
```ruby
require 'twilio-ruby`
```  

# authentication
We need to include authentication that connects to the correct Twilio account. Just like your cell phone, sending messages is not free. Twilio charges $0.0075 to send a text message and $0.02 to send a media message. Coder.new has a login that will be accessible for students who decide to incorporate the Twilio API in their web application.  

To authenticate, the Twilio API requires an “Account SID”, which acts as a username, and the “Auth Token” which acts as a password. These are each unique strings containing both alpha and numerical characters (the account_sid and auth_token below are inaccurate)  
```ruby
require 'twilio-ruby`

account_sid = 'ABbb0d2geg9532cd3wa9457gh1w43458t0'
auth_token = '454f5g6f2g5g6ju7a8bd3dsc900a0b0c'
```  
- The actual strings are stored to a variable that will be accessed later

# RESTful_API
Next, we need to utilize Twilio's API to instantiate a new object and connect the client with the Twilio server, using RESTful programming. The object is instantiated with two paramters, `account_sid` and `auth_token`.
```ruby
require 'twilio-ruby`

account_sid = 'ABbb0d2geg9532cd3wa9457gh1w43458t0'
auth_token = '454f5g6f2g5g6ju7a8bd3dsc900a0b0c'

@client = Twilio::REST::Client.new(account_sid, auth_token)
```  
- The object is stored to an instance variable (as we have seen many times), and the API instantiates the object by connecting Twilio and the Client (`Twilio::REST::Client`)

# messages_source
The final code for our gem requires the newly instantiated object to connect to the `messages` source method in the Twilio API
```ruby
require 'twilio-ruby`

account_sid = 'ABbb0d2geg9532cd3wa9457gh1w43458t0'
auth_token = '454f5g6f2g5g6ju7a8bd3dsc900a0b0c'

@client = Twilio::REST::Client.new(account_sid, auth_token)

@client.messages.create({
  :from => '+19283251586', # this is the Coder.new Twilio phone number
  :to => '+1phone number here',
  :body => 'Your message here',
  # :media_url => 'Pic or Gif url here -- optional'
})
```  
- The `messages` and `create` methods are called on the `@client` object and take a hash as an argument. The following are required for the hash:
  - `:from` phone number
  - `:to` phone number
  - `:body` or `:media_url` depending on the type of message being sent (both can be included if desired)

# calling_the_API
As we are currently working with a single Ruby file, this Twilio object needs to be called in the Terminal. This is done the same way any Ruby file is ran (Ruby twilio.rb) and the message is sent to the receiving phone number! 

# twilio_and_MVC
This can easily be itegrated into an MVC application:
- Ruby gem must be included in the `gemfile`
- The `:to` phone number can be passed in through a form
- The `:message` or `:media_url` can be passed through a form


## Navigation  
##### Next class: [Application Build and Deploy](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/12_class) 
##### Previous lesson: [Giphy Tutorial](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/11_class/02_giphy)   
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   
