<ul class="navMenu">
    {% for nav in navs.primary %}
        {% include "./navigationItem.swg" with {count: navs.primary.length} %}
    {% endfor %}
</ul>
