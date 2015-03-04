<li class="menuItem col span_{{12/count}}">
    {% if nav.file %}
        <a class="menuItem-label" href="/{{ nav.path }}">{{ nav.file.title }}</a>
    {% elseif nav.children.length > 0 %}
        {% if nav.children.length === 1 && 
            nav.children[0].name === 'index.html' 
        %}
            <a class="menuItem-label" href="/{{ nav.children[0].path }}">{{ nav.name }}</a>
        {% else %}
            <div class="menuItem-expandable menuItem_inactive">
                <span class="menuItem-label">{{ nav.name }}</span>
                <ul class="menu">        
                    {% for child in nav.children %}
                        {% include "./navigationItem.swg" with {nav: child} only %}
                    {% endfor %}
                </ul>
            </div>
        {% endif %}
    {% endif %}
</li>
