
# CSSE-490: Advanced Web Development
### Week -3- 5:

## Project Milestones
## +
## Preparing for Lab 3
##   * Secrets / Environment Variables
##   * Relations / Migrations

---

<!-- Pull this out into the next week's set of slides! -->

# Monday...

---

# Today's Agenda:

* Let's talk React
* Milestone 4
* Milestone 5

---

## Lab 4:

* Challenges?
  * Breaking up the state
    * Lifting up state, and sending functions/props back down
  * Figuring out some of the differences between regular HTML and React (JSX)
  * Mocks didn't include the validations!
  * Generally very slow via WSL2 and doesn't actually reload when you edit anything (Eliza to look into)
  * strict-mode forces you into a functional style (without as many warning messages as we would like)
* Questions?
  * Similar-but-not-the same components:  How?
* Observations?

---

# What else would you need to learn to be able to implement your final project in React?

__(You do not need to use React in your final projects!)__

1. How to create a browser extension in React? (Solved in the 5 minutes of thinking 😆)
2. How to make the app feel responsive/clean/lightweight to the end user?
3. **How to _do_ authentication in React (ensure people are logged in, etc)**
4. **Persisting data between reloads**
5. **Practice using the dev tools**
6. Using Hooks?

<!-- Lab 5: Also test the durn thing:

-->

---


# Project Milestones

## M4:

* Some of those mocks were 😬

## M5: Project Plan Pt 2:
  * What (external) APIs will you need? Or external data dumps?
  * How will you structure your application?
  * How will you store and structure your data?


---

# Tuesday...

---


# Live planning exercise

## More on Milestone 5: Project Plan Pt 2:

  * What (external) APIs will you need? Or external data dumps?
  * How will you structure your application?
  * How will you store and structure your data?

(Put the draw the damn owl image here)

Breaking down a mock into components and architecture choices-  use the bernina feet idea

---

# Thursday...

---


## Lab 2 Feedback & Reflection

What did you find surprising in the feedback?  Confusing?

Did you have any solutions you found particularly interesting or that you had to research?

<!-- is_space method: geeksforgeeks.org/python-string-isspace-method/ -->
<!-- Luke's macro: https://github.com/csse-490-advanced-web-development/lab-2/pull/2/files -->
<!-- flash messages -->

---

## Preparing for Lab 3

* Authentication vs. Authorization


<hr />

* Before tomorrow, "read" Chapter 8 with enough attention that you'll be able to reference/find concepts as you need them during the lab


---

# Monday Slide Topics:

* Milestones 5 and 6
* Database Relationships

---

# Milestone 5

<hr>

A lot of you forgot to turn it in.  I decided not to include it in the midterm grade, to spare you the suffering.

I will be giving a bonus to those of you that did turn it in on time.


## Before 8AM Tomorrow:
<hr>
<br>


1. Fill in the [project spreadsheet](https://docs.google.com/spreadsheets/d/17FoOmJk-xgyoKU9j8y0d_1qRmBEun5ZohD0vRO0hmB8/edit#gid=0) with a summary of your technology choices
2. Turn in your Milestone 5 (by updating your existing project planning document)

<br>

## Before Class Tomorrow:
<hr>

I will aim to get them graded before class tomorrow so that you have feedback before you're fully invested in your technology/schema choices.

---

# Milestone 6: Project Setup

The deliverable for Milestone 6 is a deployed application in your technology stack of choice.

## Requirements:

* Create your repository using [this GitHub Classroom link](https://classroom.github.com/a/8cGR409z) so that I can easily check in on your progress
  * Note: You will be admins on the repos so you can make them public, move them, etc after this quarter
  * Already have repo(s) elsewhere?  <br>Link to them from the README for this repo, and make sure that I have access to the repo(s)
* Initialize your project:
  1. Generate the starting code for your project in your framework of choice
  2. Add a `.gitignore` file specific to the framework of your choice
  3. Update the README.md file to include all of the sections noted in the template repo
  4. Add __just enough__ code to your project to be able to deploy it and have a "Hello World" message appear
* Deploy the project

---

# Upcoming Schedule as it Pertains to your Projects


---

# Lab 3, Part 2
Next time I'm going to completely renumber these 🤦‍♀️.


In Lab 2, you created a basic todo application that followed REST principals.

Your routes table (from `flask routes`) looked something like this:

```
Endpoint          Methods    Rule
----------------  ---------  -----------------------
static            GET        /static/<path:filename>
todo.create_task  POST       /tasks
todo.delete_task  DELETE     /tasks/<id>
todo.edit_task    GET        /tasks/<id>
todo.index        GET        /
todo.new_task     GET        /tasks/new
todo.update_task  POST       /tasks/<id>
```


In Lab 3, Part 1, you added the routes necessary for authentication:

```
Endpoint          Methods    Rule
----------------  ---------  -----------------------
auth.login        GET, POST  /login
auth.logout       GET        /logout
auth.register     GET, POST  /register
```


---

# Lab 3, Part 2
<hr>
<br>
We are now going to add the concept of *authorization* to our application.

* Authentication == who is this?
* Authorization == are they allowed to perform this action?

We will be modifying our existing application to ensure that you only see your own tasks and that you are only able to modify your own tasks.

| **Action**               | **Who is authorized to perform this action?**
| -----------------------  | -----------------------------------------
| View a generic homepage  | Guests that are not logged in
| View my list of tasks    | Any logged in user
| Create a task            | Any logged in user
| Edit/Update a task       | The user that created the task
| Delete a task            | The user that created the task

<!-- In order to do this we will have to store both the Task descriptions and _who created the task_ -->

---


## Backstory on Tracking Who Created A Task


Previously:

* Tasks: id, description (text), complete (boolean)

Then in Lab 3, Part 1 we added:

* Users: id, email (string), password_hash (string)

**Each of these database changes (creating the tables) were initiated by manually calling `create_tables()` in the flask console.**

When we deployed, we then had to manually initiate these changes in the flask console on heroku as well!

---

## Tracking Who Created A Task


Schema (changes in bold):

* Tasks: id, description (text), complete (boolean), **user_id (foreign key)**
* Users: id, email (string), password_hash (string)

<hr>

**Problem**:
* `create_tables()` only creates tables if they don't exist!
* Any manual process (e.g. running `create_tables()` on heroku after each deploy is destined for failures and inconsistencies



---

## Tracking Who Created A Task

Schema (changes in bold):

* Tasks: id, description (text), complete (boolean), **user_id (foreign key)**
* Users: id, email (string), password_hash (string)

<hr>

**Solution**:
* Migrations!
* And automating the process of running those migrations by including them in the automatic Heroku deploy process

Migrations (using `flask-migrate`) are covered in the databases chapter of the book on page 73.

For part 2 of the lab, I have done the initial setup of `flask-migrate`, and you will have to produce a migration to make the necessary changes to the `tasks` table.


---


## Database Relationships


SQL Alchemy docs to reference:
* https://flask-sqlalchemy.palletsprojects.com/en/2.x/models/
* https://flask-sqlalchemy.palletsprojects.com/en/2.x/queries/#querying-records

Fun methods to know:
* `get_or_404`
* `first_or_404`


