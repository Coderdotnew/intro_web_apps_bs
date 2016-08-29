# your_first_web_app    
It's time. It's finally time to put a dynamic application on the web. Quick side note: we are building a **web application**, not just a website. So what's the difference? Think of a website as a *static* page on the web that's sole purpose is to provide *content*. Using HTML and maybe even some CSS styling, a website can present information, text, images, and maybe even some videos. Your school webpage is likely a static website. This means you *cannot* interact with it. I know you can click the links and read the text, but you can't *truly interact with it*.  

###### Let's focus, this is a long one  
![1](http://i.imgur.com/6JVvBxr.gif)

Think about Airbnb. This is an example of a *web application*. You want to take a vacation to Paris so you head over to [Airbnb](www.airbnb.com) and you login with your username and password. Already, you have interacted with this application in a dynamic manner as you have passed in some attributes (username and password). This web app already has your name, address, password, and maybe even some saved search preferences stored.  

You are constantly interacting with the application by inputting information and receiving new data based in these inputs. 
- For example, when you search for Paris and you receive listings that are specific to Paris. You may further specify a maximum price and specific location within the city. A web application is defined by its *interaction with the user*.  
![2](http://i.imgur.com/p2HVonX.gif)  

# lets_build
Head over to the ([Coder.new Sinatra Template](https://github.com/Coderdotnew/sinatra_template)). Create a new workspace for your web application then fork this repo and clone it into your local root development directory in Cloud9.   

Once cloned, be sure to navigate to the root directory (`sinatra_template`) and from here we are ready to get going. Let's examine a few files before we start coding in the `application_controller.rb` file. 

# gems  
Do you remember where we store our gems? Yup, inside the gemfile (duh). We have 3 gems:
- `bundler`: bundles all the gems in this file for your application to use
- `sinatra`: connects our application to the internet to create our application and allows us to use specific, predefined Sinatra syntax 
- `shotgun`: starts the Rack server and connects our application to the internet! 

# bundle
Your Terminal is still the command center for running commands, even when using Sinatra. We need to first install our `bundler` gem in order to be able to use it!  
- Enter the command: `gem install bundler`.  
- Now, we can run the command: `bundle install`.  

This will install each of the gems in our gemfile and update our `gemfile.lock` file. Typically, an extensive application might have anywhere from 5 to 20 gems, so `bundler` becomes really useful. Technically, you can run `gem install + gem_name` to install every individual gem, but it's a nice shortcut to have the `bundler` gem do this for us in one command.  

Once you bundle, you should see something similar to this (though your versions might be only slightly different)
```bash
Using rack 1.6.4
Using tilt 2.0.2
Using bundler 1.12.4
Using rack-protection 1.5.3
Using shotgun 0.9.1
Using sinatra 1.4.7
Bundle complete! 3 Gemfile dependencies, 6 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
```
- This is a confirmation of the gems that were installed using the `bundler` command.

# server
A **server** is a computer or device on a network that manages network resources. There are many different types of servers. A server handles the requests to *view* or *post* data to a web app. Think about all the search requests made on [Google](www.google.com). Becaue Google has such a massive userbase, they can't rely on just *1 computer* to handle all these requests to they have *server farms*, or groups of massive computers working together to handle requests. This is just a small section of one of Google server farms!  
![3](http://i.imgur.com/r6ak4Rd.jpg?1)  

Every computer that connects to the internet has a unique Internet Protocol address, or **IP address**. 
- In short, the internet works by relying on servers that connect an IP address with a unique address for each web page called a Uniform Resource Locator, or a **URL**. 
- When a user enters a URL into a browser like Firefox or Chrome, the computer that that browser is running on *sends a request* to te IP address of the computer or server running that web application. 
- Once the web server receives that request, it send the user back the information requested because it knows the IP address!


In order to run our Sinatra application, we need a server to handle our requests, luckily, you have one right at your fingertips: *your* computer! The `shotgun` gem helps us by turning our *local* computer into a server to *host* our web app.

# shotgun
We need to provide an **IP address** and a **port** for our server to run. Just like a port where boats are docked, every computer needs a location from which to launch the server. In your terminal type: `echo $PORT`. This will return a 4 digit port number (likely `8080`). The IP address is a number that identifies a computer on a network. Type: `echo $IP` into your terminal and determine your port number in Cloud9 IDE (likely `0.0.0.0`). With that knowledge, we can now run `shotgun`. Enter the command: `shotgun -p 8080 -o 0.0.0.0.`. Your server is now running! You will see a similar output in your terminal:  
```bash
== Shotgun/WEBrick on http://0.0.0.0.:8080/
[2016-05-22 00:39:25] INFO  WEBrick 1.3.1
[2016-05-22 00:39:25] INFO  ruby 2.3.0 (2015-12-25) [x86_64-linux]
[2016-05-22 00:39:25] INFO  WEBrick::HTTPServer#start: pid=1876 port=8080
```
- You'll notice a few things your recognize
  - port and ip numbers
  - language (Ruby) and version
  - date and time the server has started up  

You'll also notice a link that conveniently pops up in your terminal. This is our web app! If you click this link it will take you to the location of your app! You're probably thinking, but we haven't coded anything?  

Luckily, since Sinatra is built with Ruby, it also provides some great error messages! Let's check out our first error message.  
![4](http://i.imgur.com/ayW2zdq.png?1)  

This tells us a few things:
- We need to add code to our `application_controller.rb`
- There needs to be a class called `ApplicationController`
- There needs to be some type of method or function inside the class  

# application_controller
Let's open up our `application_controller.rb` file. This is our controller file so we know it functions similar to a command center for our entire application. When you open it, you'll see a template with some code already included, a lot of which you should recognize.  
```ruby
require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

end
```
- As you can see, the `ApplicationController` class is already defined with a few additional code snippets included:  
  - `environment.rb` and `model.rb` are in communication with our controller as seen by the `require` keywords (this allows data to be transferred between these files and the controller)
  - `Sinatra::Base` allows the Sinatra framework to enable our app to include specific syntax and protocals which we will learn shortly
  - Laslty, I have included syntax that allows our controller to interact with the `views` directory and the `public` directory. Feel free to use this template for future controllers that you code  

Now that we have the template syntax down, we can get back to dealing with our error. But to understand the error, we will have to learn about **HTTP methods**

# http_protocol
HTTP, or **HyperText Transfer Protocal** is designed to enable communications between a server (computer) and a client (user). HTTP has 2 important methods we will focus on: **get** and **post**  
- **GET**: requests data from a source; a get request is made anytime you go to a website -- the application needs to *get* data from a source and present it to you to see  
- **POST**: submits data to be processed; this occurs anytime you input data and receive processed data (i.e. logging on to a website and seeing your name and specific details posted for you)   

This leads us to RESTful programming...  
# RESTful_programming
**REST** stands for **Representational State Transfer**. This relies on *stateless* client-server protocal. Stateless protocol means that each HTTP request (mainly 'GET' and 'POST'). Stateless neans the *server* does not store any data about the *client session* on the server side. This means that every server can serve any client at any time -- every HTTP request happens in *complete isolation* (aka your server completely forgets about every request you make). Sometimes, applications use *sessions* or *cookies* to store user information. It is important to understand how your users are interacting with a server!

# http_verbs
The error message earlier told us to include a `get` method (HTTP verb) inside our `ApplicationController` class. We'll copy and paste from the error message like so:  
```ruby
require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    "Hello World"
  end

end
```
- We now have a HTTP request to get data. 
  - `'/'` is recognized as the `root`, or homepage, for your web app. Anytime you go to any webpage (www.google.com/, www.facebook.com/, etc) the `/` at the end of the webpage is considered the homepage. 
  - Just like coding a regular Ruby method, we have an `end` keyword (and I'm sure you recognize the `do` as well)
  - However, we haven't yet coded a view yet for our MVC so we are rather typing a literal piece of data, a string, for Ruby to display  

Save your `application_controller.rb` file and refresh your web app... YOU'RE FIRST LINE OF CODE IS OFFICIALLY ON THE WEB! Now we can see `Hello World` on our application homepage. Also, our server has added a `get` request if you checkout your terminal.  
```bash
== Shotgun/WEBrick on http://0.0.0.0.:8080/
[2016-05-22 01:05:19] INFO  WEBrick 1.3.1
[2016-05-22 01:05:19] INFO  ruby 2.3.0 (2015-12-25) [x86_64-linux]
[2016-05-22 01:05:19] INFO  WEBrick::HTTPServer#start: pid=1914 port=8080
24.251.165.195 - - [22/May/2016:01:05:31 +0000] "GET / HTTP/1.1" 200 11 0.0178
```
- You don't need to understand all that's happening, but definitely recognize the `get` verb being called!  

Let's give our server a break so we can jump over to the views portion of our web application. Enter `ctrl + c` to kill your server.  

# views
Now that we can finally see something in our browser (!), it's time to make this code less restrictive. Think back to when we began coding methods. Initially we *hard-coded* any data inside our method, but eventually we learned about argument, or parameters, that were passed in, allowing for a more generic template of a function. We will similarly do this with our views, allowing users to pass in data through forms. Before we get there, though, we need to learn how to connect the **controller** and the **view**.  

Remember, **HTML** is the markup language used to add content to a page and **CSS** is how we style this content. First, we are going to focus on populating our page with information before we think about style (because if there is no content to style, what's the point?!)  

Let's open our `index.erb` file. **ERB**, or Embedded Ruby, is a simply an HTML file that can have Ruby logic embedded in. Seeing as this is a *template* you can use over and over again, you'll notice much of the *meta data* is already filled in to save you time. There is already a link to our stylesheet, a `title` attribute, and a container `div` inside the `body` attribute. 
```html
<!DOCTYPE html>
<html>
<head>
  <title>Results</title>
  <!-- links to CSS stylesheet in the public directory -->
  <link rel="stylesheet" href="/css/index.css" >
</head>
<body> 

  <div class="results-page">

  </div>

</body>
</html>
```  
###### Hopefully this HTML looks familiar...   

Remember, we already configured our views to be in communication with our controller, now we just need to add content! Let's move the `"Hello World"` to our `index.erb` view and out of our application controller.  
```html
<!DOCTYPE html>
<html>
<head>
  <title>Results</title>
  <!-- links to CSS stylesheet in the public directory -->
  <link rel="stylesheet" href="/css/index.css" >
</head>
<body> 

  <div class="results-page">
    <h1>Hello World!</h1>
  </div>

</body>
</html>
```  
Our controller is responsible for handling requests to get data from our views so now we need to explicitly tell our controller how to *get* this data. We are going to replace the `"Hello World"` in our *get* method to a link for our `index.erb` file.
```ruby
require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    erb :index
  end

end
```
- And just like that, our controller is making a get request and *getting* any data from the `index.erb` file. 
- Notice we are using a **symbol** for our file name. Recall symbols use less memory than strings and are immunatable and unique, meaning we can't use the same file name more than once!
- Go ahead and run your server again (`shotgun -p 8080 -o 0.0.0.0.`)
- Now you'll notice we have our data displayed from the view, rather than directly from our controller!

# erb
Right now, our application is rendering HTML. Let's embed some Ruby. In order to embed Ruby, there is special syntax. When we want to display Ruby (data, objects, etc) we use `<%= "ruby string" %>`. These special tags inform the HTML that Ruby is being embedded and will be interpreted as Ruby code. Let's render a Ruby string, rather than HTML markup (while we'are at it, let's call a Ruby string method on our string)
```html
<!DOCTYPE html>
<html>
<head>
  <title>Results</title>
  <!-- links to CSS stylesheet in the public directory -->
  <link rel="stylesheet" href="/css/index.css" >
</head>
<body> 

  <div class="results-page">
    <h1><%= "hello world".upcase %></h1>
  </div>

</body>
</html>
```  
- Our string is in all caps now! 
- The most important part of this code is the `=` sign. When we want to render our Ruby, we must include the `=` after the `%`
- However, if we are using Ruby logic that we do not want to be rendered for the user to view (who wants to view logic when you are browsing a webpage?) we *do not* include the `=`. 
- Let's use an example that iterates through an array of strings and see when it is appropriate to include the `=` within our erb.
```html
<!DOCTYPE html>
<html>
<head>
  <title>Homepage</title>
  <!-- links to CSS stylesheet in the public directory -->
  <link rel="stylesheet" href="/css/index.css" >
</head>
<body> 

  <div class="homepage">
    <% names = ["Jon", "Daenerys", "Gregor", "Arya", "Tyrion"] %> 
    <% names.each do |name| %>
      <h1><%= "Hello, #{name}!" %></h1>
    <% end %>
  </div>

</body>
</html>
```
- Once you break this down and learn to read between the erb sytnax, you'll realize this is nothing new!
- A few things to notice:
  - We only use `<%= %>` when we want to render information for the user. It wouldn't make sense to render any other lines for the user to view, which also makes sense to *not* include an HTML tag for these lines of embedded Ruby
  - Notice that rather than `puts`, we now have the ability to use any HTML tag to render our code, such as `<h1>`
  - It's critical to include the `<% end %>` keyword, as any numeration requires an `end` keyword
  - Lastly, you've probably already recognized it can be rather difficult to embed a lot of Ruby with this special syntax
  - This is where the **model** of the **MVC** comes into play, allowing us to code our Ruby in a `.rb` file and call this code inside our views!
 
# model
It's best to refactor most Ruby logic into our models. Remember, you can have as many models as your application requires (this is so no one model gets overly crowded), but for now, we'll start with one model, aka one class
- Let's create a `status` model that does the following:
  - `status.rb` should instantiate a class, `Status`
  - Two attributes, `username` and `status` should be defined upon initialization
  - The user should be able to access these attributes with an `attr_accessor`, in other words, a `reader` and `writer` method  

Let's open our `model.rb` file (it's a blank one!)
```ruby
class Status
  attr_accessor :username, :status

  def initialize(username, status)
    @username = username
    @status = status
  end

end
```

# forms
As a programmer working in the backend, we would instantiate this object and call the attributes on the object directly in the class... but our users won't be working in the backend, they'll be up in the frontend! We need a way for users to input data, this is where HTML **forms** come into play.  

Think about anytime you sign up or login to a web application -- you type information into a textbox or some type of input field, and then you click a button which submits this data to be processed by the controller and model. We need to add a form for our users to input their `username` and `status`
```html
<div class="homepage">

  <h1>Post a status!</h1>
  <form method="POST" action="/status">
    <p>username: <input type="text" name="username"></p>
    <p>status: <input type="text" name="status"></p>
    <input type="submit">
  </form>

</div>
```
The user now has a text field to input data that we can use to instantiate a new `Status` class!  
Some very important components of our form:  
  1. The `method` is our HTTP method and will *POST* this data for the viewer to see
  2. The `action` determines *where* this data will be *posted*
  3. The `name` for each `<input>` field represents the **parameter** or argument. This is critically important! Just like when we define our parameters in our intialize method, these must be uniquely indentified (for the same reason we cannot have 2 arguments with the same name)
  4. Lastly, we *MUST* include the `submit` `<input type>` to actually *send* this data to our controller to be instantiated  

Time to instantiate this object! Back to the controller we go!

# MVC_object_instantiation
Our controller is constantly *getting* and *posting* data for our users, but now we have an object we've defined and want to utilize. So far, our controller only has a `get` HTTP method to retrieve our `index.erb` view file.   

- However, we need to *post* information to a new view, this information being the `username` and the `status` the user enters in the form on the `index.erb` file.  
- The `post` method will need to be added to our controller, because we want to post data and because we defined a `"POST"` method in our HTML form. 
- The `post` method looks very similar to the `get` method with a few differences:
  - The name of the method being used
  - The action of this method, meaning where this data will be posted (`status.erb`)
  - Object instantiation using the parameters input by the user in the form
  - A different `erb` file to load  
 
```ruby
require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    erb :index
  end

  post '/status' do 
    @status1 = Status.new(params[:username], params[:status])
    erb :status
  end

end
```
- Takeaways:
  - The *action* of the HTTP method must point to the *same exact action* from our HTML form (`'/status'`). Note, this will also be the **URL** for our website, or the **slug** (URL slugs are the exact address of a specific website, so now rather than simply `/`, we will have `/status` at the end of our application URL)
  - We need an *instance variable* to store the newly instantiated object, otherwise the object would just be floating around. Remember, we will be calling our attribute methods on the instance variable!
  - Our parameters have new syntax when being instantiated.
    - `params` is a keyword that signifies a parameter is being input from the `name` field in the HTML form and the `[:symbol]` is the specific name represented as a unique symbol, again, defined in the `name` field in the HTML form  

For instance, if we instantied this in our Ruby file it might look like this:
```ruby
@status1 = Status.new("coderdotnew", "This is my first status!")
```
- However, because the user cannot instantiate an object like this with their terminal command line, they input their parameters with the forms, which are defined in the `name` input field  

# calling_objects
The new object is now stored in an instance variable. This `@` symbol allows us to pass this instance variable around our application without worrying too much about scope. We want to now call this object and it's attributes in the `status.erb` view file.  

So far, our `status.erb` file is simply a template that we need to fill in.
```html
<!DOCTYPE html>
<html>
<head>
  <title>Results</title>
  <!-- links to CSS stylesheet in the public directory -->
  <link rel="stylesheet" href="/css/index.css" >
</head>
<body> 

  <div class="results-page">
    
  </div>

</body>
</html>
```
Our first job is to access our object in this view. This means we need the embedded Ruby syntax
```html
<div class="results-page"> 
  <h1><%= @status1 %></h1>
</div>
```
- You did it! You've officially created an object, defined by the user, instantiated by the controller, and passed to the view using a post HTTP method! This is the primary functionality of all MVC web applications!
- The thing is... all we can see is a `#`. This represents the object id. Let's use a built-in function to double check we have a unique object stored in the `@status1` instance variable.
- Note: The `.object_id` method is a built-in Ruby class method
```html
<div class="results-page"> 
  <h1><%= @status1.object_id %></h1>
</div>
```
- Progress! We have confirmed we have a uniquely stored object! If you refresh your browser, you'll notice the object id changes as it is a unique instance 
- Don't forget -- we have 2 attributes we can call on our object: `username` and `status`
- Let's add those now...
```html
<div class="results-page"> 
  <h1><%= @status1.username %>: <%= @status1.status %></h1>
</div>
```
- Our application has officially posted our username and status that was defined by the user in the homepage! The possibilities are endless now that you can pass around data this easily!
- Let's break that line of code down:
  - We used a `<h1>` tag to render this data
  - An `=` sign was used in our erb syntax because we wanted to *view* the data on the browser screen
  - The `:` is outside of the erb syntax as this is being rendered as plain HTML
  - Notice in your terminal, the `"POST"` verb is displayed anytime you submit the parameters and pass the object to be posted on the `status.erb` page!
  - P.S. Don't forget to kill your server (`ctrl + c`) when you are done running your application

#### You now have the knowledge and foundation to build any number of applications! Though this is a much, much simpler version, this structure is similar to how any social app might post a status!  
![6](http://i.imgur.com/Zo0CCLP.gif)  

## Navigation  
##### Next lesson: [Convert to MVC](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/09_class/04_convert_to_mvc)  
##### Previous lesson: [Sinatra File Structure](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/09_class/02_sinatra_file_structure) 
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)

