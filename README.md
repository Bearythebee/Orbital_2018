**Orbital2018**
- Team Couchpotatoes

# **Milestone 1 (04/06/18)**

Proposed level of achievement : Gemini

Targeted audience: Youths, millennials, young adults

### **Project scope**

We propose to create a web-app that collates the most popular and recent TV shows over the past years, making it easier for avid TV show viewers to find a show to watch and keep up with the trend. 

### **Motivation**

TV shows are gaining in popularity and are a common pastime for many youths and millennials - some may even go as far as to claim it to be a hobby. In this day and age, these shows are almost never viewed on the television anymore, but on streaming platforms instead. Examples of such platforms are Netflix, Hulu, Amazon Prime Video and many more. The existence of the many different streaming platforms give viewers a plethora of choices to view the various shows from, but it then becomes difficult to keep track of the different shows when watching across platforms as each platform would have their respective selection of shows.
Our web-app aims to provide viewers with a single platform where viewers can decide what to watch, without having to cross-reference with too many different websites. At the same time, viewers can also keep up with the shows that are currently in-trend and popular amongst other youths and young adults. 

### **User Stories**

- As an avid tv-show viewer, I want to be able to look for a tv show without having to cross-reference across various platforms.
- As a youth/young adult, I want to be able to keep up with the current trendy shows without having to put in too much time and effort. 
- As an administrator, I want to be able to update the web-app to include new shows and categories for viewers to consider watching.
- As an administrator, I want to be able to maintain the accounts of users of the web-app to ensure optimum usage of the web-app.

### **Core features**

Basic features (CRUD)
- Users can sign up for an account and log in using that account on the home page (Create)
- Users can select which category they want to watch via a drop-down menu, choose which show they want to watch, and choose whether they agree to watch the show or not - allows navigation between pages (Read) 
- Users can add reviews and ratings of shows watched (Create/Update)  
- Admins can edit the list of shows and categories - add new shows, remove old shows, add new categories (Create/Delete/Update)

### **Advanced features and extensions**

- Social media integration (Facebook/Twitter/Gmail/Wechat etc.)
- Sharing reviews, recommending shows to friends on social media
- Embedding video trailer of each show
- Download episode list for the show for the convenience of the user to follow with the show 
- Bookmarking of shows (save for later feature) and saving which shows have already been watched so that the web-app will not recommend them again 

### **Proposed additional features**

If time permits, we intend to include a machine learning algorithm to better cater to our user’s needs. Using supervised learning methods, the machine learning algorithm will better match our user with a recommended tv show from our database.
As the number of users of our web-app increase, there would be more data available to improve the algorithm. The recommendations of shows for new users will be based on ratings and feedbacks by existing users, hence making the web-app better suited for the users’ needs.

### **Proposed languages and frameworks**

- HTML5,CSS3,JavaScript
- Bootstrap
- DJango(Python) 
- MySQL 

### **Proposed timeline**

- 21 June - 4 June: Work on Milestone 1, read up and familiarise ourselves with the proposed languages and frameworks (through YouTube videos, online courses e.g. Codecademy, Udemy, Coursera)
- 5 June  - 6 June: Data mining of various TV shows from platforms such as IMDb, Rotten Tomatoes, MetaCritic 
- 7 June - 10 June: Building database of TV shows and user accounts template using MySQL
- 11 June - 15 June: Frontend work, coming up with design and template of the website
- 16 June - 20 June: Backend work, linking up frontend with backend and database
- 21 June - 25 June: Launch of first prototype of web-app, testing and debugging 
- 26 June - 2 July: Work on milestone 2, continue to perform iterative user testing and debugging




# **Milestone 2 (02/07/2018)**

### **Core features developed**

As stated in Milestone 1, we planned to implement essential features by Milestone 2 for our minimum viable product, and possibly even one or two of the advanced features. Below is a list of the features we have implemented followed by a short description: 

1) Users can sign up for an account and log in using that account on the home page (Create)

	- We decided to include this feature on every page of the web-app, instead of the home page only. The login and sign up buttons are on the navigation bar of every page. Clicking on the signup button would bring the user to a simple sign up page where the user can sign up for an account by picking a username and password. Clicking on the login button would bring the user to a login page, where the user can sign in to his/her account. 
	- Here, we made use of Django’s authentication packages. For sign-ups, this ensures no repeated usernames and that strong passwords are chosen. For logging in, this ensures that the correct password is used for the specified username.  

2) Users can select which category they want to watch via a drop-down menu, choose which show they want to watch, and choose whether they agree to watch the show or not (Read) 
	
	- The initial plan was to adopt a minimalistic design for the web-app, hence the idea of a drop-down menu. However, we decided to go with grids of the different categories as we feel it would be more aesthetically pleasing and intuitive for the user. 

	- We also chose to have the list of shows pop up on the same page, instead of redirecting to another page. Clicking on the title would bring the user to the show’s details page, and clicking on an area outside the popup would close it. Again, we feel that it is more aesthetically pleasing and intuitive for the user as they would not have to navigate between too many different pages. 

	- The “watch” button on the synopsis page would give a popup, with where to watch the shows. Clicking “another show” will immediately redirect the user to another show of the same genre. 

3) Users can add reviews and ratings of shows watched (Create/Update)  

	- Each show’s details page would have a navigation panel on the left, where users can navigate between the show’s synopsis and reviews. The reviews page would show all the reviews for the show left by other users, or “No reviews yet!” if there are no reviews yet. Below the reviews would be a form for the user to leave a review and rating. Upon submitting the review, it would automatically be reflected above. 

4) Admins can edit the list of shows and categories (Create/Delete/Update)

	- This feature was implemented through MySQL by building of the databases and linking them up with the front-end through Django’s jinja templating. 

5) Embedding video trailer of each show

	- Video trailers were taken mostly from YouTube and occasionally from IMDb. Trailers were embedded using the HTML iframe tag.


### **Problems encountered**

The initial problem we encountered was juggling with the different languages and frameworks. Each had their own syntaxes and style, hence made it difficult to switch between them. This got better after familiarising ourselves with them.  


Subsequently, the main problem we encountered was that we made the mistake of starting with front end development, followed by back end development. Due to the rigidity of the Django framework, we should have started with the back end while incorporating the front end along the way. This made it difficult to keep with the timeline we had set back in Milestone 1.
Django makes sure that everything works “the Django way”, hence made it somewhat challenging to link the entire front end with the back end, especially when the front end work was already almost completed while the back end work just started.

For example, when doing the front end work using HTML, CSS and JavaScript locally, the changes made were immediate and easily viewed just by refreshing the page. However, with Django, the use of templates and static files made it difficult to see the changes. This resulted in us using different styles of writing CSS and JavaScript (inline and internal, instead of solely external), making the code messy. 


### **Features yet to be implemented**
- Social media integration (Facebook/Google+ etc.)
- Sharing reviews, recommending shows to friends on social media
- Download episode list for the show for the convenience of the user to follow the show 
- Bookmarking of shows (save for later feature) and saving which shows have already been watched so that the web-app will not recommend them again 
- Machine learning


### **Moving forward**
We aim to enhance the features we have implemented. Below is a list of our aims for the existing features:  

1. Log in and Sign up pages
2. User to provide more details when signing up, e.g. name, email address etc
3. Profile page for users 
4. Show recommendations popup
5. Adding shows for reality category (currently shows thriller shows)
6. Refine CSS for the popup, adding stars as ratings etc 
7. Show’s details and reviews page 
8. Refine CSS for both pages
9. Empty fields after submitting a review
10. Automate name field based on username, a timestamp for each review, allow for  editing of existing reviews


# **Milestone 3 (30/07/2018)**

