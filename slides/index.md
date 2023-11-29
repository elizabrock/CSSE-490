---
layout: page
title: Slides
permalink: /slides/
---

<ul>
    {% for item in site.pages %}
      {% if item.url contains 'slides' and item.url != '/slides/' %}
        <li><a href="{{ item.url }}">{{ item.title }}</a></li>
      {% endif %}
    {% endfor %}
</ul>
