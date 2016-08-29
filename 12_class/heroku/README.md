# deploy
You've made it to the final lesson for Introduction to Web Apps with Ruby! The goal is to make these projects, living and evolving applications that can be shared with the world! Deploying an application means taking the code that is stored locally or on Cloud9 and uploading to a continuously running server (so you don't have to keep running `shotgun`). A deployed application is accessible on the internet.  

We will deploy our apps using **Heroku**, a cloud-based server. First, we need to make an account!

# account_creation
Head to [Heroku](https://signup.heroku.com) and sign up for a new account. Enter the required information, then check your email to confirm the account and set a password.  

# installing_heroku_toolbelt
As a cloud-based server, Heroku has it's own list of commands it responds to, similar to Github (i.e. `git init`, `git push`, `git pull`, etc). The Heroku toolbelt needs to first be installed into the Cloud9 Terminal. Enter the following command into your Terminal and press enter:
```bash
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
```
- Your Cloud9 Terminal now has access to all the Heroku commands.
- First, login using your Heroku credentials. Enter: `heroku login` (you'll be prompted for your email and password)

# prepping_the_app
The app needs to be prepared in order to be deployed onto Heroku's servers. If you have not already initialized a Github repo for your project, do that ASAP. Otherwise, you should already be in the root directory of your application in the `(master)` branch. Your app is ready to be deployed.  

# deploy
Still in your application root directory, create a heroku app with the command: `heroku create`. You should see a similar response from your Terminal.
```bash
$ heroku create
Creating polar-inlet-4930... done, stack is cedar-14
http://polar-inlet-4930.herokuapp.com/ | https://git.heroku.com/polar-inlet-4930.git
Git remote heroku added
```  

Next, using git, push your cloned Git repo to the Heroku servers with the command: `git push heroku master`. You should see a similar response from your Terminal.
```bash
$ git push heroku master
Fetching repository, done.
Counting objects: 10, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 876 bytes | 0 bytes/s, done.
Total 6 (delta 4), reused 0 (delta 0)
```  

Your app is live on the internet! You may have noticed a strange name automatically assigned to your app, don't worry we can change that in our Heroku dashboard.  
- Refresh your Heroku dashboard and you'll notice the newly pushed app! 
- Click this app and on the right side, select the settings option. 
- Go ahead and name your app whatever you prefer!

#### The URL of your app is www.yourappname.herokuapp.com  
![1](http://i.imgur.com/3AZAnxb.gif)  

# updating_your_app
Now that your Cloud9 and Github repo are linked to the Heroku servers, it is easy to push up any updates you've made to your app. Whenever you add a feature, enter the command: `git push heroku master` and you can refresh your application URL to check out the updates!  

## Navigation  
##### Back to: [Application Build and Deploy](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/12_class)  
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)  