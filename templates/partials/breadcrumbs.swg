<ol class="breadcrumb col span_12">
    <li>
        <a href="/">Home</a>
    </li>
    {#
        navConfig.breadcrumbProperty = 'breadcrumb_path'
        currentFileObject.breadcrumb_path = ...
        {{log breadcrumb_path}}
    #}
    {% for crumb in breadcrumb_path %}
    <li>
        {% if crumb.file %}
            {#
                @root === the template scope of the current file object being rendered
                @root.nav_path === currentFileObject.nav_path
                ('nav_path' property can be configured by navConfig.pathProperty = 'nav_path')

                path === currentNavNode.path
                (path property is set to all nav nodes)
            #}
            <a href="/{{ crumb.file.path }}">
                {{ crumb.file.title }}
            </a>
        {% else %}
            {{ crumb.name }}
        {% endif %}
    </li>
    {% endfor %}
</ol>
