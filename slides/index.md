---
layout: page
title: Slides
permalink: /slides/
---

{% assign slides_by_unit = site.pages | sort: "unit" | group_by: "unit" %}

{% for unit in slides_by_unit %}
  {% if unit.name != '' %}
  <h2>{{ unit.name }}</h2>
  <ul>
  {% assign sorted_slides = unit.items | sort: "title" %}
  {% for slides in sorted_slides %}
    <li>
        <a href="{{ slides.url }}">
          {{ slides.title }}
        </a>
    </li>
  {% endfor %}
  </ul>
  {% endif %}
{% endfor %}
