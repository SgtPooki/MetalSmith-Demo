<li>
    {% if nav.file %}
        <a href="/{{ nav.path }}">{{ nav.file.title }}</a>
    {% elseif nav.children.length > 0 %}
        {% if nav.children.length === 1 && 
            nav.children[0].name === 'index.html' 
        %}
            <a href="/{{ nav.children[0].path }}">{{ nav.name }}</a>
        {% else %}
            <div class="nav-expander inactive">
                <span class="nav-expander-hd">{{ nav.name }}</span>
                <ul class="nav-expander-bd">        
                    {% for child in nav.children %}
                        {% include "./navigationItem.swg" with {nav: child} only %}
                    {% endfor %}
                </ul>
            </div>
        {% endif %}
    {% endif %}
</li>
