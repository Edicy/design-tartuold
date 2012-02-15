{% for item in site.all_menuitems %}
                {% if item.selected_with_children? %}
                  {% for level2 in item.all_children %}
                    {% if level2.selected_with_children? %}
{% if editmode %}
<div id="cont_left">  
 <ul>
  {% for level3 in level2.visible_children %}
   <li{% unless level3.translated? %} class="untranslated"{% endunless %}><a {% if level3.selected? %}class="active"{% endif %} {% unless level3.translated? %}class="fci-editor-menuadd"{% endunless %} href="{{ level3.url }}"{% case forloop.index %}{% when 1 %} style="padding-top: 0;"{% endcase %}>{{ level3.title}}</a></li>
  {% endfor %}
     <li>{% menubtn level2.hidden_children %}</li>
   <li>{% menuadd parent="level2" %}</li>
</ul>
</div>
{% else %}
<div id="cont_left">  
 <ul>
  {% for level3 in level2.all_children %}
   <li{% unless level3.translated? %} class="untranslated"{% endunless %}><a {% if level3.selected? %}class="active"{% endif %} {% unless level3.translated? %}class="fci-editor-menuadd"{% endunless %} href="{{ level3.url }}"{% case forloop.index %}{% when 1 %} style="padding-top: 0;"{% endcase %}>{{ level3.title}}</a></li>
  {% endfor %}
</ul>
</div>
{% endif %}
{% endif %}{% endfor %}{% endif %}{% endfor %}