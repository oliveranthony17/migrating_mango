Hello and welcome to Migrating Mango - your fruity companion to migration! 🥭

<a href="https://migrating-mango.herokuapp.com/" target="_blank">Click here to view app!</a>

<em>(Note - this app was designed for mobile so we would recommend turning on device through chrome dev tools!)</em>

When first opening the app you will land on the welcome page. The globe with orbiting flags is created fully using HTML and CSS (no JavaScript) and clicking on the flag will take you to the respective country show page. Here, on the landing page, the user can also sign in, sign up, or click "continue" if the user is already logged in.
<br>
<br>
Switzerland is currently the only country which is fully functional, with accurate information on the general topics (which can be accessed without an account) but more importantly with the functionality to create a task list when a user profile is created. 
<br>
<br>
In the back-end here we have a database of "tasks" with title, content, and a variety of parameters around category, EU or non-EU based, order, etc. When a "user profile" is created, the user selects a variety of parameters based on their situation (EU or non-EU, work, study or family reunification, etc.) and a list of specific "user tasks" is created where each instance refers to a user and a task, and has a status (default: "Pending").
<br>
<br>
The logic for the above sits within the "user_profile_controller.rb" file and is quite complex given the variety of parameters in play. This code could also be refactored to adhere to the DRY principles. Further complexity arose as the default behaviour of the "Devise" gem needed to be changed such that creation of a "user" led to the create "user profile" page and such that the "create_user_tasks" method was also called automatically on creation of a "user profile".
<br>
<br>
Feel free to test this functionality by creating a new user profile, otherwise you can log in using the below credentials.
<br>
<li>Email: test@lewagon.com</li>
<li>Password: lewagon</li>
<br>
Either way, you will now have access to the "My Tasks" page where you can view the aforementioned "user tasks". Clicking on a task will reveal additional edit options (task dropdown functionality created using Stimulus JavaScript) where you can view the user task show page, or change the status of the task using dynamic buttons. The page automatically reloads when the status of a task is changed, at which point it will appear in the correct section (greyed out if marked as complete).
<br>
<br>
In our group at Le Wagon we shared the common pain of navigating complex laws, multiple sources of information and never-ending to-do lists for migrating to Switzerland. This app was created with the aim of simplifying this process and providing a smooth user experience with a single source of information. We are very proud of what we achieved in only 2 weeks!
