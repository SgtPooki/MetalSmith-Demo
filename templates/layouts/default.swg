<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Metalsmith-Demo</title>

        <meta name="viewport" content="width=device-width">

        <link href="/styles/main.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        {% include "../partials/header.swg" %}

        {% include "../partials/breadcrumbs.swg" %}
        <div class="main-wrapper row">
            {% autoescape false %}
                {{ contents }}
            {% endautoescape %}
        </div> {# END .main-wrapper #}

        {% include "../partials/footer.swg" %}
        <script src="/scripts/main.js"></script>
    </body>
</html>
