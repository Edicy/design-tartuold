<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
{% include "SiteHeader" %}
{{ blog.rss_link }}
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
	<div id="content">
  <div class="post blogarticle clearfix" data-search-indexing-allowed="true">
   <h2 class="red" data-search-indexing-allowed="galse">{% editable article.title plain="true" %} <span class="date">{{ article.created_at | format_date:"short" }}</span>, {{ article.author.name }}</h2>
   {% editable article.excerpt %}
<br />
<br />
   {% editable article.body %}
  </div>
  {% unless article.new_record? %}
   <a name="comments"></a>
  <h3>{{ "comments_for_count" |lc }}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span></h3>
{% endunless %}
  {% for comment in article.comments %}
  <div class="comment edy-site-blog-comment">
   {{ comment.body }}
   <h4>{% removebutton %} {{ comment.author }} <span class="date">{{ comment.created_at | format_date:"short" }}</span></h4>
  </div>
  {% endfor %}
  <div id="commentform">
  {% commentform %}
  {% unless comment.valid? %}<ul>
{% for error in comment.errors %}
<li>{{ error | lc }}</li>
{% endfor %}
</ul>{% endunless %}
                <table>
                  <tbody><tr>
                    <td colspan="2"><h2>{{ "add_a_comment" |lc }}</h2></td>
                  </tr>
                  <tr>
                    <td>{{ "name" |lc }}:</td>
                    <td><input type="text" class="textbox" name="comment[author]" value="{{comment.author}}" /></td>
                  </tr>
                  <tr>
                    <td>{{ "email" |lc }}:</td>
                    <td><input type="text" class="textbox" name="comment[author_email]" value="{{comment.author_email}}" />&nbsp;{{ "email_wont_be_published" |lc }}</td>
                  </tr>
                  <tr>
                    <td>{{ "comment" |lc }}:</td>
                    <td><textarea class="textbox" rows="5" cols="40" name="comment[body]">{{comment.body}}</textarea></td>
                  </tr>
                  <tr>
                    <td colspan="2"><input type="submit" value="{{ "submit" |lc }}"/></td>
                  </tr>
                </tbody></table>
{% endcommentform %}
        </div>
	</div>
</div>
  {% include "JS" %}
</body>
</html>