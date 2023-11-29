# CSSE-490: Advanced Web Development
### Week 2: Databases as they pertain to Web Applications

## Intro to Lab 2 Part 2
## +
## REST

---

# Lab 2: Classic simple to-do app without authentication

"If you can dream it, you can TODO it"


## Lab 2, Part 2


* A new set of tests has been pushed up
  * You will need to [sync your fork](https://docs.github.com/en/github/collaborating-with-pull-requests/working-with-forks/syncing-a-fork)
* The new tests assume that you will follow RESTful conventions, although it's certainly possible to implement them in other ways
* I have also added the necessary tweaks and instructions in the README for deploying the app and running it locally


---

## REST

REST == Representational State Transfer

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;     == using a combination of HTTP verbs and guessable URLs to provide a _uniform interface_


| HTTP Verb | URL             | Flask View Action | Result                                 |
|-----------|-----------------|-------------------|----------------------------------------|
| GET       | /tasks/         | task_index        | list of all tasks                      |
| GET       | /tasks/1        | show_task         | show one task                          |
| POST      | /tasks          | create_task       | create a new task                      |
| PUT       | /tasks/2        | update_task       | update the specified task              |
| DELETE    | /tasks/2        | delete_task       | delete the specified task              |
| GET       | /users/12/tasks | task_index        | list all of the tasks for a given user |


---
layout: two-cols
---

## Deployment

The current deployment process involves manual steps.

In "real life" we avoid manual deployment steps at all costs.

In the next lab, we will move from manually calling `db.create_all()` and into a fully automated process.

However, the fully automated process is automating a script that essentially does the same things we're currently doing by hand


<br>

P.S. We're edging into environment variables and secrets, so we'll talk about them in detail very soon.

::right::

```sh
# Create the Heroku app
$ heroku create <your username>-lab2
# Set up the appropriate environment variable to
# tell Flask that Heroku is a production environment:
$ heroku config:set FLASK_CONFIG=production
# Create the postgres database
$ heroku addons:create heroku-postgresql:hobby-dev
# Manually set up the database tables
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
# Deploy the application
$ git push heroku main
$ heroku open
```


---

## Nuances from the Tests

```python
def test_create_a_new_todo_item(client, sb, live_server, db_session):
    # Note that this test doesn't stipulate that we have to do this old-school form submission.
    # We could easily upgrade this to be a SPA without this test having to change at all!
    # We happen to be implementing it as a separate page but it could just as easily be on
    # this page with no changes to the test.
    sb.open(homepage)
    sb.click_link("Add task")
    field_labeled(sb, "Task Description").send_keys("Follow the test instructions")
    click_button(sb, "Save")
    lis = sb.find_elements("ul#todos li")
    li_text = [li.text for li in lis]
    assert li_text == ["Follow the test instructions"]
```

This exact test will still pass once we transition from the old-school full-page-refresh style of web programming we are starting with and move to a more modern interactive style.

---

## Poll: Which Front-End JavaScript Framework should we learn?

Based on discussions in week 1, I'm up for changing the plan on which FE framework we focus on.

Based on the [2020 State of JS rankings](https://rankit.vote/vote/NcaCS5XZX4ytTVNVO9O8), I selected 4 possibilities:

* Svelte (https://svelte.dev/)
* React (https://reactjs.org/)
* Vue.js (https://vuejs.org/)
* LitElement (https://lit.dev/)

Vote here: https://rankit.vote/vote/NcaCS5XZX4ytTVNVO9O8

---

## Tomorrow

* Let's talk secrets and environment variables (originally scheduled for week 6)
* We'll also talk migrations and relations
* And lay out the plan for project milestones going forward

## Today

* Wrap up Lab 2, to turn in tomorrow
* If you don't have a project idea listed in the [490 Team Formation Spreadsheet](https://docs.google.com/spreadsheets/d/17FoOmJk-xgyoKU9j8y0d_1qRmBEun5ZohD0vRO0hmB8/edit?usp=sharing) come up with one before tomorrow.  Ping me if you need help with an idea!
