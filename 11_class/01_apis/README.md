# API
API, or **application programming interface**, is basically a contract between two pieces of software. You can think of it as an agreement between two programmers that allow data and information to be accessed in specific ways.  

This agreement is mutually beneficial as it allows external applications a mean to interact with users outside of their application and receive data, and it allows programmers to access prewritten code, allowing them to focus on the functionality of their application. Extra time to focus on more functionality!  
![1](http://i.imgur.com/WcQFqFx.gif)

For example..
- Anytime you have interacted with a Twitter feed outside of www.twtter.com, the application was using Twitter's API. 
- Anytime you have authorized login information using your Facebook or Google, you used the Facebook or Good authorization API.
- Anytime an application had the weather displayed on their application, a weather API may have been accessed.

An Api is a list of functions, methods, variables, and object classes that are prewritten and accessible by an outside application (if one follows the guidelines, that is).

APIs exist in many forms. Many of the most popular application have some sort of API that allow user to access data on external applications. Facebook, Twitter, Google Maps, Foursquare, Soundcloud, Giphy, and even Tinder have API's that allow their data to be sent to external applications. It can be useful for to have an API because data from a user can be sent back to the application, even if that user is not on Facebook, Twitter, or whatever API is currently being accessed. Ruby takes this a step further and creates **gems** to wrap some of the most useful API's.  

# RESTful_APIs
RESTful programming is important for APIs because statelessness is about ensuring that calls to the API are not tied to a particular server. This allows APIs to be scaled and serve many users at any given time (keeping both the API and your application running smoothly)!  
![2](http://i.imgur.com/82w9wmz.gif)  
###### The Donald has spoken  

# ruby_gem_wrappers
We already know that Ruby gems are pre-written code that can supply a Ruby application with specific functionality. Ruby gems help make API integration even easier by using *wrappers*.  

A Ruby API wrapper is a gem that configures an API in Ruby (Ruby syntax that allows a programmer to integrate a an API with Ruby methods, object classes, and functionality. These are also written with RESTful programming in mind, so our ability to integrate and access 3rd party API's is as easy as possible when working with Ruby apps!  

# JSON
**JSON**, or JavaScript Object Notation, is a light-weight data format. It is widely used by REST API's for data exchange and transfer between clients and servers. Almost all API documentation will include JSON formatted objects to demonstrate what methods can be called to obtain specific info. JSON is a specific format we need to `require` as well.

To see this JSON formatting, we need to head to the official API documentation: [Giphy API documentation](https://github.com/Giphy/GiphyAPI). Here, we can scroll to the `Random Endpoint` portion of the documentation. Let's check out the [example random query](http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=american+psycho)
```javascript
{
  "data": {
    "type": "gif",
    "id": "xpLocgdzHqW9G",
    "url": "http://giphy.com/gifs/american-psycho-dancing-rain-coat-xpLocgdzHqW9G",
    "image_original_url": "http://media0.giphy.com/media/xpLocgdzHqW9G/giphy.gif",
    "image_url": "http://media0.giphy.com/media/xpLocgdzHqW9G/giphy.gif",
    "image_mp4_url": "http://media0.giphy.com/media/xpLocgdzHqW9G/giphy.mp4",
    "image_frames": "21",
    "image_width": "254",
    "image_height": "286",
    "fixed_height_downsampled_url": "http://media0.giphy.com/media/xpLocgdzHqW9G/200_d.gif",
    "fixed_height_downsampled_width": "178",
    "fixed_height_downsampled_height": "200",
    "fixed_width_downsampled_url": "http://media2.giphy.com/media/xpLocgdzHqW9G/200w_d.gif",
    "fixed_width_downsampled_width": "200",
    "fixed_width_downsampled_height": "225",
    "fixed_height_small_url": "http://media0.giphy.com/media/xpLocgdzHqW9G/100.gif",
    "fixed_height_small_still_url": "http://media0.giphy.com/media/xpLocgdzHqW9G/100_s.gif",
    "fixed_height_small_width": "89",
    "fixed_height_small_height": "100",
    "fixed_width_small_url": "http://media0.giphy.com/media/xpLocgdzHqW9G/100w.gif",
    "fixed_width_small_still_url": "http://media0.giphy.com/media/xpLocgdzHqW9G/100w_s.gif",
    "fixed_width_small_width": "100",
    "fixed_width_small_height": "113",
    "username": "",
    "caption": ""
  },
  "meta": {
    "status": 200,
    "msg": "OK"
  }
}
```
- Hopefully this reminds you of a... HASH!
- JSON is formatted in key-value pairs, but you may see slightly different syntax. 
- Note: Each value in this hash corresponds with a method from the `RandomGif` class.
```ruby
module Giphy
  class RandomGif
    def initialize(hash)
      @hash = hash
    end

    def id
      hash.fetch('id')
    end

    def url
      URI(hash.fetch('url'))
    end

    def image_original_url
      URI(hash.fetch('image_original_url'))
    end

    def image_url
      URI(hash.fetch('image_url'))
    end

    def image_mp4_url
      URI(hash.fetch('image_mp4_url'))
    end

    def image_frames
      hash.fetch('image_frames')
    end

    def image_width
      hash.fetch('image_width')
    end

    def image_height
      hash.fetch('image_height')
    end

    def rating
      hash.fetch('rating')
    end

    def username
      hash.fetch('username')
    end

    def caption
      hash.fetch('caption')
    end

    def tags
      hash.fetch('tags')
    end

  end
end
```
- This is critical as it shows that we can access each key's value by calling it as a method on the Giphy object!

# some_Ruby_API_gem_wrappers
#### Twilio ([documentation](https://github.com/twilio/twilio-ruby))
#### Giphy ([documentation](https://github.com/sebasoga/giphy))
#### Wunderground ([documentation](https://github.com/wnadeau/wunderground))
#### The Movie Database ([documentation](https://github.com/ahmetabdi/themoviedb))
#### All Recipes ([documentation](https://github.com/shivamd/allrecipes))
#### Bing Translator ([documentation](https://github.com/relrod/bing_translator-gem))  


## Navigation  
##### Next lesson: [Giphy Tutorial](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/11_class/02_giphy)  
##### Back to: [Application Build and API's](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/11_class)    
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   