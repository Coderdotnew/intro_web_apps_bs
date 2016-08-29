# sinatra_file_structure
Files, files, files! Because Sinatra is a framework, there needs to be organization to how its files are structured in order for there to be seamless communication between the various parts of the application. Just like when you build a house, the framework needs to be solid to ensure the house does not crumble. Below is the file structure we will be using for Sinatra and you'll notice you'll run into this organization for other MVC applications, even ones that are more complex in your engineering future!

```bash
sinatra_app_directory
├── app
    ├── controllers
       └── application_controller.rb
    ├── models
        └── model.rb
    └── views
        └── index.erb
        └── results.erb
├── config
    └── environment.rb
├── public
    ├── css
    ├── images
    └── js
├── config.ru
├── Gemfile
├── Gemfile.lock
└── README.md
```

# sinatra_app_directory
This is our **root directory**. All of our files will be contained within the root directory and when we run our server, we *must* be in this directory (similar to when we run RSpec, we must be in the root directory of the specific challenge).

# app_directory
Our `app` directory contains the **MVC** portion of our application, the **model, view, and controller** directories. These three directories will be in regular communication with one another so it's important we know exactly where to find them!  

## controllers_directory
The `controllers` directory contains the `application_controller.rb` file. You'll immediately notice this is a Ruby file, as Sinatra is a Ruby *library*, or extension of the Ruby langugage. This file will be making the object calls from our `model` files and connecting and displaying them on our `view` files.  
## models_directory
The `models` directory contains the `model.rb` file. This is our pure Ruby file and will contain the bulk of our logic and data manipulation. This file can be called anything you wish, for instance, if you are writing a class to create a new user, you might want to call it `user.rb`. You may have several models depending on the complexity of your application. 
## views_directory
The `views` directory contains our HTML files. But you may have noticed we the file extension is a little different: `.erb`. **ERB**, or **Embedded Ruby**, is an HTML file that allows for Ruby logic to be embedded. 

# config_directory
The `config` directory contains the `environment.rb` file. This file is responsible for the configuration and setup of our application environment and ensures everything runs smoothly. Again, because Sinatra is written on top of Ruby, many of our files have `.rb` file extensions. 

# public_directory
The `public` directory contains our frontend assets, which include images (`img` directory), CSS (`css` directory), and any JavaScript (`js` directory). The reason our HTML documents are not also included is because HTML is essential for the **views** component of the MVC design and needs to be directly related to our Ruby logic. Also, recall we are not working with pure HTML, but rather, ERB (HTML that can embed Ruby)!

# config.ru_file
The `config.ru` file is critical for **Rack**. Sinatra *rides on Rack*, which is a **middleware**, or a component of the application that monitors and makes data requests. Just think of middleware as the part of the application in the middle that helps pass around data and information between the server and the user! For example, it gets information from the server and brings it to your browser, or it posts information from your application to the view. Rack is simply a way for a developer to create a server application, which is what you will be building. This file helps run our `application_controller.rb` file which in turn creates new instances of our model objects for us! 

# gemfile
The `gemfile` is a file where we tell Sinatra what Ruby **gems** we hope to call on. A **gem** is a collection of prewritten Ruby code that is packaged for us to call on (free code)! For instance, there is a Twitter gem that provides a Ruby interface for Twitter, allowing you to post a Twitter feed on your personal application. Also, there is a Spotify gem that allows you to add songs to your Spotify playlists through the gem code. The `gemfile.lock` file is auto-generated. This confirms the gems that are in use once you *bundle* them together (don't overwrite this code, Sinatra will handle that for us).

#### Welp! That's the general file structure for Sinatra web applications! We will go into more detail once we start coding our first app on the...  

![1](http://i.imgur.com/Fad4wwb.gif)     

## Navigation  
##### Next lesson: [Web Application](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/09_class/03_web_application)   
##### Previous lesson: [Intro to MVC](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/09_class/01_mvc_intro)  
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   
