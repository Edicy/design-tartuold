{% for article in site.latest_articles limit:1 %}
<div id="news">
   <div id="newsheader"><h2> {{ "latest_news" |lc }}</h2></div>
   <div id="newsbody">
{% for article in site.latest_1_articles %}
   <div><a href="{{ article.url }}">{{ article.title }}</a> / {{ article.created_at | date:"%d.%m" }}</div>
   <a class="newslink" href="{{ bloglink }}">{{ "older_news" |lc }}</a>{% endfor %}
   </div>
  </div>
     {% endfor %}