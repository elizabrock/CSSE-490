# Lab 3: Classic TODO list with authentication

Expand on last week's lab by adding an authentication and authorization

## Learning Goals / Objectives:

* Apply what you have learned about authentication to enable users to sign in/up/out.
* Apply what you have learned about authorization to ensure that users only see their own content
* Apply what you have learned about database migrations to add columns and tables as needed

## Requirements:

* All tests must pass
* Lab must be deployed to heroku

## Getting Started:

Lab Starting Code: We will use the [Lab 2 repository](https://github.com/csse-490-advanced-web-development/lab-2) as our starting point.

You may start with your code from Lab 2, or you may use my solution to Lab 2 as your starting point.

* To start with your code from Lab 2, simply open up your Lab 2 code
  * Note: **If** you decided to make a copy of the lab 2 folder before starting lab 3 (e.g. so that you have an unchanged copy of lab 2 as it was when you turned it in), you will need to run `pip install -e .` in the newly created copy of the project.
* To start with my code from Lab 2:
  * Download my code from the `solution` branch:
    1. Visit https://github.com/csse-490-advanced-web-development/lab-2/tree/solution
    2. Click the big green "Code" button
    3. Choose "Download ZIP"
    4. Unzip the zip
    5. Copy all of the files and folders in the downloaded zip into *your* Lab 2 project folder
    6. Make a commit with the commit message "Professor @elizabrock's solution to Lab 2"


### 1. Clone/Test/Deploy Your Starting Code

Refer to the instructions from Lab 2.  Make sure that you are starting with a working local development environment with passing tests, and that you have successfully deployed the starting code.

Note:  If your tests are suddenly not passing with a ton of errors, there is a good chance that you've restarted your computer and haven't turned Postgres back on.  On WSL/Ubuntu run: `sudo service postgresql start` to turn on the postgres server.

It is perfectly fine to keep deploying to the same Heroku project that you used for Lab 2.

### 2. Cherry-pick commit 7f49e7968bd1229dee1dd3541276567581f1ff43 from my repository

1. Add my repository as a git remote, if you haven't yet:
  * `git remote add upstream git@github.com:csse-490-advanced-web-development/lab-2.git`
2. Fetch history from upstream:
  * `git fetch upstream`
2. Cherry pick the commit:
  * `git cherry-pick 7f49e7968bd1229dee1dd3541276567581f1ff43`

### 3.  Let the tests guide you in implementing authentication per the patterns in the books.

1. Start with the test `test_signing_up_successfully_and_then_logging_in`

  * Run the test: `pytest tests/test_authentication.py::test_signing_up_successfully_and_then_logging_in`
  * Let the error messages drive you to implement a new user registration form.
    * Hint: `<a href="\{\{url_for('auth.register')}}:">Sign Up</a>`
    * I highly recommend adapting the form on page 115 of the book.
  * Let the error messages then drive you to _create_ (DO NOT do more than create it) a User model (inside of `app/models.py`)
2.  Now that you have been motivated to create the User model, run the test: `pytest tests/test_user_model.py`
  * In order to implement the User model, you will need to install new packages for the first time!
     * Use `pip install flask-login Werkzeug` to install flask-login and Werkzeug locally
        * If you are on WSL and do not yet have `python3-dev` installed, you will need to do so now
     * Then run `pip list --format=freeze > requirements.txt` to add your local packages to the requirements.txt file
        * IMPORTANT: Before committing your changes to requirements.txt, actually look at them and only commit those that are necessary.  For example, you do not want the line `todo==1.0.0` to be committed, as that represents the local project (which isn't actually installable via. `pip install`, and thus including it will break deploys).
          * Side note: I have to believe there is a better system for dependency management in Python and that I'm just ignorant as to what it is.  If y'all know please enlighten me.
  * Let the error messages in the User tests inform you as to what to include in your User model
      * Hint 1:  Refer to page 103 and page 107-108 in the book; or better yet refer to the actual code for flasky on GitHub;
      * Hint 2:  You aren't going to need everything that the flasky app from the book includes)
3. Once the model tests pass, return to the signup test
  * At this point you should be past the signing up portion of that test and start seeing failure messages about the signing in portion of the test
  * Implement signing in, per e.g. page 111 of the book
  * Hint: The relevant reading on flash messages is on pages 53-55.
4. Once `test_signing_up_successfully_and_then_logging_in` is passing, implement the three remaining integration test cases.
  * Hint 1: Pick one test to focus on at a time
  * Hint 2: The code for the signout case is on page 112.
  * Hint 3: The relevant reading on flash messages is on pages 53-55.


### 4. Test locally and then deploy your code

To create the new users database in your local development environment:

```
(venv) ~/Projects/CSSE-490-lab-2[solution !?*]$ FLASK_APP=todo.py flask shell
Python 3.8.5 (default, Sep  4 2020, 02:22:02)
[Clang 10.0.0 ] on darwin
App: app [development]
Instance: /Users/elizamarcum/Projects/CSSE-490-lab-2/instance
>>> from todo import db
>>> db.create_all()
>>> exit()
```

Test the sign up/in/out functionality locally.

Then, to deploy:

```sh
# Deploy the application
$ git push heroku main --force-with-lease
# Manually trigger creation of the new database table:
# Note: This is not normally required, but for this lab
#       automating this so that you can see what the
#       migration tools do for us.
$ heroku run flask shell
Running flask shell on ⬢ brocker-lab2... up, run.7667 (Free)
Python 3.9.7 (default, Aug 30 2021, 22:04:11)
[GCC 9.3.0] on linux
App: app [production]
Instance: /app/instance
>>> from todo import db
>>> db.create_all()
>>> exit()
$ heroku open
```

<hr>

## Steps 5-10 are part of Part 2

**Do not do these steps yet!**

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

### 5. Read this description of Part 2

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

We are now going to add the concept of *authorization* to our application.

Authentication == who is this?
Authorization == are they allowed to perform this action?

A summary of the changes that you/we are going to have to make:

1. You will have to set up database relationships between the User model that you created in Part 1, and the Task model that you created in the prior lab.
2. You will have to limit access to the various todo actions, either to require users to be logged in or to require users to be logged in as the specific user that created the task
3. I created a homepage just for logged out users to see, and updated the path of `todo.index` to be `/tasks` instead of `/`

|Endpoint          | Rule          | Now requires login? | Additional Modifications
|----------------  | ------------- | ------------------- | -------------
|auth.index        | **/**         | no                  | create a new homepage view just for logged out users to see
|todo.create_task  | /tasks        | yes                 |
|todo.delete_task  | /tasks/<id>   | yes                 | limit access to only to the person that created the task
|todo.edit_task    | /tasks/<id>   | yes                 | limit access to only to the person that created the task
|todo.index        | **/tasks/**   | yes                 | Update the route; only show the current user's tasks
|todo.new_task     | /tasks/new    | yes                 |
|todo.update_task  | /tasks/<id>   | yes                 | limit access to only to the person that created the task

### 5. Cherry-pick two commits from my repository

#### First: `git fetch upstream`

#### Second: `git cherry-pick a2dd1c71eb47113528ab236764262c292a1d0267`

See diff: https://github.com/csse-490-advanced-web-development/lab-2/commit/a2dd1c71eb47113528ab236764262c292a1d0267

In that commit, I installed `flask-migrate` per the instructions on pg 73 of the book
  1. `pip install flask-migrate`
  2. `pip list --format=freeze > requirements.txt` (remember not to commit the line that references the current project!)
  3. Add the Migrate line from the book to todo.py
  3. `FLASK_APP=todo.py flask db init` to initialize all the files that flask-migrate uses
  4. A whole bunch of steps that you won't have to do in your own projects if you use flask-migrate from the start
  4. `flask db migrate -m "initial migration"
  4. More steps that you won't have to do in your own projects if you use flask-migrate from the start
  5. `flask db upgrade`

#### Third: `git cherry-pick a4619201befe4fbc71fdabdf0a389c1787e329f9`

See diff: https://github.com/csse-490-advanced-web-development/lab-2/commit/a4619201befe4fbc71fdabdf0a389c1787e329f9

In that commit I provided tests for you to implement authorization/database relationships yourself

### 6. Let the tests guide you in implementing authorization / database relationships

* Run the test `test_todo_app.py`
  * I highly recommend using `pytest --maxfail=1 tests/test_todo_app.py` to run the file, as the `-maxfail` flag will cause the test run to end after the first test failure.  Then run just the specific failing test (e.g. `pytest tests/test_todo_app.py::test_that_failed`) until that test case passes.  Then return to running the full test file again.
* Let the error messages motivate you to modify the Task model to include a User relationship (This is extremely similar to the relationship between Users and Comments in the flasky app)  You would benefit from perusing the documentation here: https://flask-sqlalchemy.palletsprojects.com/en/2.x/models/
  1. Add the relationships on to the Task and User models (this is the same as what you see for Role and User in the book, except that in this case it is User and Task)
    * TODO: Just put the durn code here
  2. Create a migration to reflect the new state of the code:
    * `flask db migrate -m "adding relationship between tasks and users"`
  3. "Upgrade" your local database with the migration
    * `flask db upgrade`
* Implement changes necessary to make the rest of the tests pass
  * Hint: the currently logged in user is `current_user`

* Optionally, backfill user ids for existing tasks (e.g. as in page 135 of the book)
* Note to Eliza:  Be sure to add unit tests for not being able to post updates to or delete someone else's tasks

### 7. Test locally and then deploy your code

* Note to Eliza: Be sure to update the heroku deploy steps correct so that running the migration is automatic

### 8: Wrap up your work

1. Commit your local changes
2. Push your code to *your* GitHub repository
4. Deploy your code to Heroku
5. Make sure that your changes are live in production
6. Open a pull request to the primary lab repo
7. Turn in the lab to [Gradescope](https://www.gradescope.com/)!

### 9. Breath a sigh of relief

### 10. Have a good break!
