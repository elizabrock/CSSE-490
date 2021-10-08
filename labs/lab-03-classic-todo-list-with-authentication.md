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
    * Hint: `<a href="{{url_for('auth.register')}}:">Sign Up</a>`
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

### 5. Cherry-pick commit [SHA] from my repository

`git cherry-pick SHA`

### 6. Let the tests guide you in implementing authorization / database relationships

* Run the test `test_todo_app.py`
* Let the error messages motivate you to modify the Task model to include a User relationship (This is similar in pattern to Ch. 9 User Roles)
* Install `flask-migrate` (both with pip install and pip freeze)
* Update the model
* Create a flask migration script with `flask db migrate`
* Review the migration
* Run the migration with `flask db upgrade`
* Optionally, backfill user ids for existing tasks (e.g. as in page 135 of the book)
* Implement changes necessary to make the rest of the tests pass
* Note to Eliza:  Be sure to add unit tests for not being able to post updates to or delete someone else's tasks

### 9. Test locally and then deploy your code

* Note to Eliza: Be sure to update the heroku deploy steps correct so that running the migration is automatic

### 10: Wrap up your work

1. Commit your local changes
2. Push your code to *your* GitHub repository
4. Deploy your code to Heroku
5. Make sure that your changes are live in production
6. Open a pull request to the primary lab repo
7. Turn in the lab to [Gradescope](https://www.gradescope.com/)!
