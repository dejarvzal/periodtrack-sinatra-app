##Specifications for the Sinatra Assessment

Specs:

 - [X] Use Sinatra to build the app
     - *Started by using the Corneal Gem and ensured ApplicationController inherited from Sinatra::Base*
 - [X] Use ActiveRecord for storing information in a database
     - *Create a seed database and utilized rake:db function*
 - [X] Include more than one model class (e.g. User, Post, Category)
     - *App has 2 models, User and Period*
 - [X] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
     - *A User has_many Periods*
 - [X] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
     - *A Period belongs_to a User*
 - [X] Include user accounts with unique login attribute (username or email)
     - *The User model (user.rb) validates that the email address used to signup is unique*
 - [X] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
     - *The period_controller.rb has the routes for creating, viewing, editing and deleting a period*
 - [X] Ensure that users can't modify content created by other users
      - *The authorized_to_edit? helper method is used to ensure a user can only modify their own period entry*
 - [X] Include user input validations
      - *Both the User and Period models contain the necessary input validations*
 
 **BONUS** - not required - 
 - [X] Display validation failures to user with error message (example form URL e.g. /posts/new)
 - [X] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

**Confirm**  [X]
 - You have a large number of small Git commits
 - Your commit messages are meaningful
 - You made the changes in a commit that relate to the commit message
 - You don't include changes in a commit that aren't related to the commit message


 *Opportunities to improve app at a later time*
 - Allowing a user to only see their period entries in the Period Index view
 - Add field on edit view to allow to add end date of period
 - Add a calculator to show estimated start date of next period (Add 28 days to start_day)
 - Based on calculation, show estimated start of PMS symptoms