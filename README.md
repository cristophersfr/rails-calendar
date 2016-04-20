CS 270 Assignment 9
===================

In this assignment, we will begin creating a new Rails application that serves as
an Event Calendar for events and users.

Step 0
------
Create a new Rails app; you can either create a new one in a different directory, 
or you may specify to create your app in the current directory.

Step 1
------
Generate the models for events and users as follows:

* an Event has a name, location, start time, and end time
* a User has a name and email

Remember to migrate the database after creating these models.

Step 2
------
Create a `has_and_belongs_to_many` assocation between events and users.  Remember
to generate the appropriate migration for the join table, and then do not forget
to migrate the database after you have done so.

You can use scaffolding to do the above tasks...

Step 3
------
Generate an "empty" Calendar model and controller.  Do not worry about creating 
views for the calendar; we will take care of that in the next phase.