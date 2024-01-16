# Lab 4: Simple React App

## Learning Goals / Objectives:

* Learn the basics of React through hands-on experience
* Learn how to break down a mock into React components

## Prerequisites:

* Work through the [Official Intro to React Tutorial](https://reactjs.org/tutorial/tutorial.html)
* Read [Thinking in React](https://reactjs.org/docs/thinking-in-react.html)

## Requirements:

* Implement a basic TODO app in React (WITHOUT a backend)
  * The application should generally match the layout of the provided mocks (see below)
* Deploy your basic TODO app to Heroku

## Getting Started:

### Step 1: Create a GitHub repository for this lab

1. Lab Starting Code (through GitHub Classroom): https://classroom.github.com/a/iyfE0Diz

### Step 2: Clone the repository on your local machine

See the "Cloning and Installing Dependencies" section of the README

### Step 3: Use create-react-app to generate a basic react app for you:

We will be using the create-react-app defaults to create this app.  Why?  Because when you develop React apps on your own, this is what you're likely to be starting with!

```
  cd yourusername-lab-4
  npx create-react-app .
```

### Step 4: Create an initial commit with the generated default code:
```
  git add .
  git commit -m "Default code from create-react-app"
```

### Step 5: Run the application by running `npm start`

This will start a development react server and then automatically open [localhost:3000](http://localhost:3000) in your browser.

### Step 6: Develop a simple TODO app in React:

#### 6.1 Start by studying the Mock and Sample JSON

You are going to go through the "Thinking in React" process, so you should study the mocks as a starting point.

**For this iteration of the application, you will only be implementing views A-H.**  Views I and J can be implemented for extra credit.

**Mock**

![The balsamiq mocks for this lab](public/lab-04-mocks.png)
[direct link to mocks](public/lab-04-mocks.png)


**Sample JSON**

```
const STARTING_TODOS = [
  { id: 1, description: 'Eat Breakfast', completed: true },
  { id: 2, description: 'Deploy to Heroku', completed: false },
  { id: 3, description: 'Check Email', completed: true },
  { id: 4, description: 'Eat Lunch', completed: false }
]
```

#### 6.2 Sketch/Write out how to translate View D from the mocks into UI Components

This is "Step 1" in the "Thinking in React" article.

#### 6.3 Update the boilerplate code with this suggested starting code

##### `index.js`

```
import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import <YourHighestLevelComponentName> from './<YourHighestLevelComponentName>';
import reportWebVitals from './reportWebVitals';

const STARTING_TODOS = [
  { id: 1, description: 'Eat Breakfast', completed: true },
  { id: 2, description: 'Deploy to Heroku', completed: false },
  { id: 3, description: 'Check Email', completed: true },
  { id: 4, description: 'Eat Lunch', completed: false }
]

ReactDOM.render(
  <React.StrictMode>
    <YourHighestLevelComponentName todos={STARTING_TODOS} />
  </React.StrictMode>,
  document.getElementById('root')
);
```

##### `index.css`

I highly recommend grabbing the starting CSS from the Labs, which is the Primitive UI CSS framework: https://github.com/taniarascia/primitive

##### Steal The Rest of the Markup from Lab 5 (we haven't done lab 5 yet, but we will!)

For my starting markup, I took the markup directly from https://brocker-lab2.herokuapp.com/.  Then I modified the markup to suit the React way by splitting it up into my planned components.

It will be very helpful for you to know that if you want to have commented out code inside your JSX, you need to wrap it in curly braces, as well as in a javascript comment.  For example: `{\* your comment goes here *\}` **NOT** `<!-- you can't make a comment like this -->`

**Relevant markup from https://brocker-lab2.herokuapp.com/**
```
<h1>If you can dream it, you can TODO it!</h1>

<ul id="todos">
    <li class="task">
        <a href="/tasks/4">Finish writing the instructions for Lab 4 already</a>
    </li>
    <li class="task">
        <a href="/tasks/5">Seriously.  The class starts in like an hour.</a>
    </li>
    <li class="task">
        <a href="/tasks/6">Eat breakfast before class</a>
    </li>
</ul>

<a href="/tasks/new">Add task</a>
```

**Relevant markup from the task form on https://brocker-lab2.herokuapp.com/tasks/new**

_Note: You won't need a `csrf_token` or a Save button, but this markup might jog your memory on what exactly it was that we did in Lab 2_
```
<form method="POST" action="/tasks" enctype="multipart/form-data">
  <input id="csrf_token" name="csrf_token" type="hidden" value="Ijg5ZDUxZjY2NjZlNTIwY2VmOGM0NzU5Y2RlMGJkZmJlMjlkNDQxMWIi.YVb_FA.NY314M8XhLrgX0pU7_cCkUDBEXY">
  <label for="description">Task Description</label> <input id="description" name="description" required type="text" value="">
  <input id="submit" name="submit" type="submit" value="Save">
</form>
```

##### Further Styling and Markup Hints

Baffled as to the location of the actual HTML template (e.g. for if you want to change the favicon, window title, etc)?  It's in `public/index.html`

If you want your lab to look like mine, you might note that I added the class of `button` to my `<a>` tag for "Add Todo"

#### 6.4 Develop the application

Hints:
* If you haven't installed the React Developer Tools browser plugin yet, you should!
* As you have already seen, the React application will almost always reload itself when you make a change to a file (even to a CSS file!)
  * However, occasionally you will create an error so mind-boggling that the autoreload will stop working.  This has only happened to me when I cause an actual error page to appear, but it's something to be aware of.
* Keep the developer tools console open while you are developing your application.  In addition to genuine error messages, there are lots of helpful warning messages that React logs to the console.
  * Important side note:  The console logs are *not* cleared out when the application auto-reloads itself.  As a result, after fixing the code that caused a particular error message you will still see the original error message in the console.  The "Clear Console" button (the one with the slashed circle) is your friend.


### Step 7: Commit your local changes

Create a `git commit` with your changes

### Step 8: Push your code to *your* GitHub repository

User `git push` to push your code to your GitHub repository

### Step 9: Deploy your code to Heroku

Create a new heroku application, using the special create-react-app buildpack:

_(This is documented in the [create-react-app documentation](https://create-react-app.dev/docs/deployment/#heroku), as well as in [this Heroku blog post](https://blog.heroku.com/deploying-react-with-zero-configuration))_

```
heroku create yourusername-lab-4 -b https://github.com/mars/create-react-app-buildpack.git
```

Then deploy your code using:

```
git push heroku main
```

And finally, check out your deployed application:

```
heroku open
```

### Step 8: Make sure that your application actually works now that it is deployed in production

1. Open the application at its deployed location (typically yourappname.herokuapp.com)
2. Verify that all of your changes are visible in production

### Step 9: Turn in the lab

1. Update README.md with the deployed URL of your application
2. Push all your changes up to GitHub
