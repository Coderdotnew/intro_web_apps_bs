# mvc_intro
Think of Ruby as a brain on the floor. Weird, I know, but stay with me. We have this massively powerful organ, just lying on the ground.  
![1](http://i.imgur.com/BkRZXiw.gif)  
This brain can do complex calculations, it can store data, it can create new objects and assign and store attributes to desribe these objects, and everything else Ruby can do. However, if this brain just lies on the floor, or in the Terminal, no one will ever know of it powers! Only once this brain goes into a vessel, like a human body, can this brain become useful. Once a brain is inside of a human, they can think, speak, run, jump, interact, and all of the above. We need a place to put this Ruby brain so users can utilize it's power!  

It's time to finally bring together the front-end (HTML and CSS) and the backend (Ruby) and put them in the internet browser! So far, these two skills you've acquired don't really have a way to communicate... until now!  

# MVC
MVC stands for **MODEL** - **VIEW** - **CONTROLLER**. MVC is a software architecture design pattern that structures an application to bring together the data and brains of the application to the user interface that the user views in the browser. MVC is technically a design pattern, kind of like a blueprint when designing a home.  
- The **model** manages the behavior and data manipulation of the application. This is where the bulk of our Ruby goes and how we manipulate user data. The model defines classes and the specific functionality that our objects perform. This is also where we might store data and data management.  
- The **view** provides a user an *interface* for the application. Written in HTML and styled with CSS, the view renders the data from the model through the use of HTML forms and presents it in an efficient design.
- The **controller** receives user input and makes calls to both the model objects and the view to perform specific actions. The view brings the backend (Ruby) together to the front-end (HTML) by constantly instantiating new objects and passing them forward to the view to be seen!  

Imagine this... You are walking through IKEA on a Saturday afternoon, eating some meatballs and checking out Fyresdal daybed for your room or the Norsborg sofa for the living room. You head over to the display kitchen and turn the faucet. No water comes out! You try to turn on the tv, the lamp, you even try to flush the toilet. Nothing is happening!  

This IKEA kitchen model has no brains! When thinking of a real house, the wooden framework that will hold the house up is like **Sinata**. The electricity, plumbming, and air conditioning are like the **models**. These components bring the house to life and allow it to perform specific functions (unlike the IKEA version). The paint, furniture, wood flooring, carpet, light bulbs are the **views**. They help style and present the house to the guest.  

# sinatra_framework
We will use **Sinatra** as our MVC framework. Remember, because MVC is more of an architecture software design pattern, we need a framework to execute and build upon this design. You may have heard of **Ruby on Rails**, a popular MVC framework used by companies such as Airbnb and Github. Sinatra is a lightweight version that will teach you the fundamentals so the jump to Rails later will be no problem!  


![2](http://i.imgur.com/ZxWgduc.gif)  
#### Guess which part of the MVC design this is? **#views**

## Navigation  
##### Next lesson: [Sinatra File Structure](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/09_class/02_sinatra_file_structure) 
#### Back to: [Model-View-Controller](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/09_class)  
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   
