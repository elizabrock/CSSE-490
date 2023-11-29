# CSSE-490: Advanced Web Development
### Week 2: Databases as they pertain to Web Applications


## Lab 1 Show-and-Tell
## +
## Intro to ORMs (Object-Relational Mappings)
## +
## Intro to Migrations?


---


## Lab 1 Show-and-Tell


---

## Projects

I've added new columns to the projects spreadsheet to record project ideas.

Spend the next 10 minutes as a project team to write down your project ideas and preliminary project titles.

Afterwards we'll brainstorm names and ideas for those that haven't come up with ones that they like yet.

---

## Why were the demos kind of slow?

Let's talk about Heroku's architecture and how dynos work :)

---

## Upcoming Labs

We're not doing Lab 2 today, but a preview of the material is relevant to your preparation.

* Lab 2: Classic Simple todo app with no auth
  * Practice basic ORM skills by implementing CRUD operations
  * Learn more TDD skills by using tests to guide your implementation
    * The tests will be numbered to guide you through a possible route for implementation

<br>

### Intro to ORMs

* ORM = Object Relational Mappers
* Abstracts away all the SQLy parts of the work.
* The Flask-SQLAlchemy ORM is introduced in Ch. 5 of the book.  You should read it.


---

## Upcoming Labs

We're also not doing Lab 3 today, but a preview of the material is still relevant to your preparation.

* Lab 3: Classic Simple todo app with authentication+authorization
  * Learn an authentication framework (Flask-Login)
  * Practice writing migrations

<br>

### Intro to Database Migrations

* Migrations allow you to evolve y our database schema over time
* Migrations abstract away a lot of the work involved in data changes
* Most migration frameworks have the concept of both migrating _up_ and migrating _down_ in schema versions
  * This allows us to cleanly roll back production deploys that involved schema changes


---

## What do you need to do to prepare for **Lab 2**?


* Read the book through Chapter 5 (Databases)
* Install PostgreSQL 13
  * Mac: `brew install postgresql`
  * Windows:  Are any of you using vanilla windows at this point?
  * WSL / Ubuntu:
    * https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-database
    * https://www.postgresql.org/download/linux/ubuntu/

<!--

Lab 2 Slides:

* git ignores - local and global

https://docs.github.com/en/get-started/getting-started-with-git/ignoring-files#configuring-ignored-files-for-all-repositories-on-your-computer



## Lab 2 Test Cases

* Selenium Tests:
  * CRUD with good input
  * CRUD with bad input
* Unit Tests:
  * Detailed data validations


Be sure to number the tests to give clues as to the order of implementation

Also switch to seleniumbase for the improved helpers.

-->


---
