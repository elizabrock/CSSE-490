---
layout: page
title: Labs
permalink: /labs/
---

<ul>
    {% for item in site.pages %}
      {% if item.url contains '/labs/' and item.url != '/labs/' %}
        <li><a href="{{ item.url }}">{{ item.title }}</a></li>
      {% endif %}
    {% endfor %}
</ul>
