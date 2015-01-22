<!--[if IE 6]>
<style type="text/css">
#mainmenu dd.untranslated {
background: #d00000;
}
</style>
<![endif]-->

<div id="mainmenu">

   
     {% for item in site.visible_menuitems %}
       {% unless item.blog? %}
        <dl>
          <dt{% unless item.translated? %} class="untranslated"{% endunless %}><a href="{{ item.url }}" {% unless item.translated? %}class="fci-editor-menuadd"{% endunless %}>{{ item.title }}</a></dt>
         {% for level2 in item.visible_children %}
           <dd{% unless level2.translated? %} class="untranslated"{% endunless %}{% if level2.selected? %} class="active"{% endif %}><a href="{{ level2.url }}" {% unless level2.translated? %} class="fci-editor-menuadd"{% endunless %}>{{ level2.title }}</a></dd>
        {% endfor %}
             {% if editmode %}{% if item.hidden_children.size > 0 %}<dd class="vg-cms-btn">{% menubtn item.hidden_children %}</dd>{% endif %}<dd class="vg-cms-btn">{% menuadd parent="item" %}</dd>{% endif %}
        </dl>
         {% cycle ' ', ' ', '<div class="clearer"></div>' %}
      {% endunless %}
    {% endfor %}
{% if editmode %}
             <dl><dt class="vg-cms-btn">{% menubtn site.hidden_menuitems %}</dt></dl><dl>
<dt class="vg-cms-btn">{% menuadd %}</dt>
</dl>{% endif %}

</div>
             {% for item in site.menuitems_with_hidden %}
              {% if item.blog? %}
                 {% assign bloglink = item.url %}
              {% endif %}
             {% endfor %}