<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
</head>
<body id="front">
	<div id="wrap">
  <div id="header">
   {% include "Langmenu" %}
                        <div id="footer"{% if site.search.enabled %} style="right: 160px"{% endif %} class="clearfix">
    {% content name="footer" xpage="true" %}
   </div>
                        {% include "Search" %}
  </div>
  <div id="redbox">
   <div id="logo">
    {% if editmode %}<h1 class="clearfix">{% editable site.header %}</h1>{% else %}<h1><a href="{{ site.root_item.url }}" class="clearfix">{% editable site.header %}</a></h1>{% endif %}
   </div>
   <div class="clearer"></div>
   {% include "Mainmenu" %}
   {% include "Newsbox" %}
   <div class="clearer"></div>
   <div id="edicy">
   {% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}
   </div>
  </div>
	<div id="content" class="clearfix">
  <h1>{{ page.title }}</h1>
  {% include "Submenu" %}
  <div id="cont_right">
    <div id="cont_right_inn" class="clearfix" data-search-indexing-allowed="true">
   {% content %}
    </div>
  </div>
  <div class="clearer"></div>
	</div>
</div>
  {% include "JS" %}
</body>
</html>