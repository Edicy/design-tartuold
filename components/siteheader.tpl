<meta name="keywords" content="{{ page.keywords }}" />
<meta name="description" content="{{ page.description }}" />
<meta name="copyright" content="{{ site.copyright }}" />
<meta name="author" content="{{ site.author }}" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    {% if site.search.enabled %}{% stylesheet_link "assets/site_search/3.0/style.css?1" static_host="true" %}{% endif %}
    {% stylesheet_link "style.css?tartu" %}
	{% if editmode %}{% stylesheet_link "assets/admin/editmode.css" static_host="true" %}{% endif %}
<!--[if IE6]>
<style type="text/css">
#logo {
width: 10px;
}
</style>
<![endif]-->
<link rel="icon" href="/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

<!--[if IE]><link rel="stylesheet" href="http://static.edicy.com/assets/ie.css" type="text/css" /><![endif]-->
<title>{% if article %}{{ article.title }} | {{page.site_title}}{% else %}{{page.site_title}} | {{ page.title }}{% endif %}</title>