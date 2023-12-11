# CSSE-490: Advanced Web Development
### Week 3: Getting a Running Start

## Intro to Lab 2
## +
## Intro to Testing
## +
## Intro to Templates and Forms


---

### Lab 2 brings in an expanded application structure

<pre style="margin-left: 1em;">
brocker-lab-2/
├─ app/
│  ├─ controllers/
│  │  ├─ application_controller.rb
│  │  ├─ simple_photo_processor_controller.rb
│  ├─ views/
│  │  ├─ index.html.erb
│  │  ├─ layout.erb
│  │  ├─ simple_photo_processor/
│  │     ├─ new.html.erb
│  ├─ public/
│  │  ├─ images/
│  │  ├─ stylesheets/
├─ spec/
│  ├─ features/
│  │  ├─ homepage_spec.rb
│  │  ├─ simple_photo_processor_spec.rb
      ^---- Tests!!!! We have tests!
</pre>


<br>
<br>

## ..and Tests!

---
layout: two-cols
---

## Eliza's Testing Philosophy

* Test-first, never test-last
  * The only exception is throw-away spike code
  * But only if you actually throw it away!
* Top down testing
* Each layer should be a little more thorough than the last

## As applied to [Lab 2](https://github.com/elizabrock/CSSE-490/blob/main/labs/lab-01-photo-processing-app.md):

* Your mission is to set up the Lab
* Run the tests
* And only implement what the tests tell you is necessary

(If you want to add more functionality, by all means do so, but you must also add tests to go with it!)

::right::

<img src='lab-2-workflow.png' style='max-width: 100%; max-height: 28em; margin-left: 4em;'>
---

### General File Structure:
<pre style="margin-left: 1em;">
brocker-lab-2/
├─ app/
│  ├─ controllers/
│  │  ├─ application_controller.rb
│  │  ├─ simple_photo_processor_controller.rb
│  ├─ views/
│  │  ├─ index.html.erb
│  │  ├─ layout.erb
│  │  ├─ simple_photo_processor/
│  │     ├─ new.html.erb
│  ├─ public/
│  │  ├─ images/
│  │  ├─ stylesheets/
├─ spec/
│  ├─ features/
│  │  ├─ homepage_spec.rb
│  │  ├─ simple_photo_processor_spec.rb
</pre>

---

## Intro to Templates
### ERB

ERB has all the normal templating things- variables, control structures, etc.

The [ERB Docs](https://jinja.palletsprojects.com/en/3.0.x/) are extensive.


---

## Intro to Templates

### Example with variables

`app/controllers/application_controller.rb`:
```ruby
class ApplicationController < Sinatra::Application
  get '/' do
    erb :"index.html", locals: { name: "Eliza" }
  end
end
```

`app/views/index.html.erb`:
```erb
<h1>Hello, World! My name is <%= name %>.</h1>
<p>Would you like to try the
  <a href="/simple_photo_processor/new">Simple Photo Processor</a>
  I've been working on?
</p>
```
---
layout: two-cols
---

## Intro to Templates

### Example with layout

`app/views/layout.erb`:
```html
<!doctype html>
<html lang="en">
<head>
  ...
  <title>Simple Photo Processor</title>
  ...
</head>
<body>
  <div class="container">
    <%= yield %>
  </div>
</body>
</html>
```

::right::

<br />
<br />
<br />
<br />
<br />
<br />

`app/views/index.html.erb`:

```html
<h1>Hello, World! My name is <%= name %>.</h1>
<p>Would you like to try the
  <a href="/simple_photo_processor/new">Simple Photo Processor</a>
  I've been working on?
</p>
```

---

## Review of HTML Forms

You may have only see forms briefly in 280.

You should read this: https://developer.mozilla.org/en-US/docs/Learn/Forms/Sending_and_retrieving_form_data

---

## FYI on styling

I'm using [Primitive UI](https://taniarascia.github.io/primitive/) in the labs.

