{% if editmode %}
     <ul id="langmenu">
     {% for language in site.languages %}
     <li>{% if language.selected? %}{{ language.title }}{% else %}
        <a href="{{ language.url }}">{{ language.title }}</a>{% endif %}
     </li>
     {% endfor %}
     <li>{%languageadd%}</li>
     </ul>
{% else %}
  {% if site.has_many_languages? %}
     <ul id="langmenu">
     {% for language in site.languages %}
     <li>{% if language.selected? %}{{ language.title }}{% else %}
        <a href="{{ language.url }}">{{ language.title }}</a>{% endif %}
     </li>
     {% endfor %}
     </ul>
  {% endif %}
{% endif %}

