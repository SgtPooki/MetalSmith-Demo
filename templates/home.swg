{% include "./partials/header.swg" %}
{% include "./partials/breadcrumbs.swg" %}
{% include "./partials/navigation.swg" %}
    {% autoescape false %}
        {{ contents }}
    {% endautoescape %}
{% include "./partials/footer.swg" %}
