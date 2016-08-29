# giphy
In case you haven't noticed, we love to use gifs, and so does the internet. One of the most popular gif storage web applications is [Giphy](www.giphy.com). Giphy has (thankfully) made an easy-to-use API and Ruby took it a step further with a gem API wrapper to search for gifs from your application! For this tutorial, we will be using a Ruby file (I'll let you figure out how to transfer this knowledge to an MVC application later)  
![1](http://i.imgur.com/4UxHwp7.gif)

# require
Because this is a gem and we are not currently working with a `gemfile`, we need to explicitly `require` the Giphy gem at the top of our Ruby file.
```ruby
require 'giphy'
```

# giphy_object
As you know, when you define a new object model, it is instantiated with the `.new` method. However, because this is an API wrapper, Giphy has configured this object model slightly differently, using a module (we'll talk about this soon) allowing us to access the object by simply calling a specific method on it. First, let's check out the Ruby Giphy gem documentation page: [Giphy Ruby Gem Documentation](https://github.com/sebasoga/giphy)  

Let's focus on using the Giphy API to search for a random gif in the Giphy database. Scrolling through the documentation page, one of the primary methods is `.random`. If we take it a step further, we can actually peak inside the code to get a better understanding of what is happening under the hood of the gem. In the [random_gif.rb file](https://github.com/sebasoga/giphy/blob/master/lib/giphy/random_gif.rb) there's a few things to take note of:
1. Module. This is new and that's okay. Think of a module as the highest order of scope in a Ruby program that provide methods that you can use across *multiple classes*, sort of like a library of methods. 
2. The `RandomGif` class is initialized with a hash.
3. There are numerous methods ranging from `url` to `caption`.

Time to instantiate a Giphy object.
```ruby
require 'giphy'

Giphy.random
```
- Ta-da! That's it! The gem allows us to use the module and classes pre-defined and configured by the Giphy gem. By calling on it, the client can interact with the Giphy server and search through their database of gifs.  
- The documentation states the `.random` method can be used in two ways:
1. `Giphy.random` 
2. `Giphy.random('search_keyword')` with the parameter being a specific search keyword of your choice 

# calling_the_API
Being in the terminal, we can run the Ruby file as it...but wait! We aren't seeing anything. Remember, now that we are without *Views*, we need to use `puts` to print the data onto the Terminal screen.
```ruby
require 'giphy'

puts Giphy.random

#=> #<Giphy::RandomGif:0x007fe458ac2e18>
```
- We have a Giphy Object! 
- However, we need to think about this as a client-facing program -- no user is going to want to see an object id.
- If we are going to be inserting this gif into an `erb` file, we need to find an image url that ends in `.gif`

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

# calling_object_methods
Remember, our goal is to return an image url in order to embed the gif in our HTML. Looking through the JSON, the `image_original_url` has a value that ends in `.gif`!
```ruby
require 'giphy'
require 'json' # this informs Ruby of the JSON formatting

random_gif = Giphy.random
puts random_gif.image_original_url

#=> https://media.giphy.com/media/ujUdrdpX7Ok5W/giphy.gif
```
- Now, we have accessed this specific value from the Giphy object!
- This image url allows the browser to render the gif  
![2](https://media.giphy.com/media/ujUdrdpX7Ok5W/giphy.gif)

# giphy_and_MVC
This can easily be integrated into an MVC application:
1. Ruby gem must be included in the `gemfile` (`giphy` and `json`)
2. A search keyword can be passed using a form to allow a user to search for a specific keyword
3. The image url must be embedded into an `erb` file to render the image with HTML

# special_note
A hash and JSON are so similar, Ruby has a built-in method to convert them to one another. Again, we must add `require 'JSON'` to the top of our Ruby file to inform Ruby we are working with this specific object notation. 
```ruby
require 'JSON'
# we will use a snippet from the first portion of the previously used JSON from the Giphy API 
json_data = {
  "type": "gif",
  "id": "xpLocgdzHqW9G",
  "url": "http://giphy.com/gifs/american-psycho-dancing-rain-coat-xpLocgdzHqW9G",
  "image_original_url": "http://media0.giphy.com/media/xpLocgdzHqW9G/giphy.gif",

json_data.to_hash

#=> {
:type=>"gif", :id=>"xpLocgdzHqW9G", :url=>"http://giphy.com/gifs/american-psycho-dancing-rain-coat-xpLocgdzHqW9G", :image_original_url=>"http://media0.giphy.com/media/xpLocgdzHqW9G/giphy.gif"
}

```
- `.to_json` is called to convert a hash to JSON
- Just like that, we can convert between the two data formats!



## Navigation  
##### Next lesson: [Twilio Tutorial](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/11_class/03_twilio)
##### Previous lesson: [API's](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/11_class/01_apis)   
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   


