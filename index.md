---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
permalink: /
title: Home
---

Home is where the heart is.
{%- assign page_paths = site.pages | map: "path" -%}
{{ page_paths }}

And this is where the links are always:

          {%- for path in page_paths -%}
            path is "{{path}}"
            <br />
            {%- assign my_page = site.pages | where: "path", path | first -%}
            {%- if my_page.title -%}
            title is "{{my_page.title}}"
            <br />
            <a class="page-link" href="{{ my_page.url | relative_url }}">{{ my_page.title | escape }}</a>
            <br />
            {%- endif -%}
          {%- endfor -%}
