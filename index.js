var metalSmith = require('metalsmith');
var markdown   = require('metalsmith-markdown');
var templates   = require('metalsmith-templates');
var collections = require('metalsmith-collections');
var permalinks  = require('metalsmith-permalinks');
var sass = require('metalsmith-sass');
var navigation = require('./custom/navigation');

var metalias = metalSmith(__dirname); //all paths are relative to __dirname (or whatever you pass here)

var buildSuccess = function buildSuccess(err) {
    console.log('Site built successfully...', err);
};
var buildFail = function buildFail(err) {
    console.log('Error: ', err);
};

var meta = {
    title: 'MetalSmith-Demo',
    description: 'Metal with care.',
    // used by metalsmith-templates
    partials: {
        breadcrumbs: 'partials/breadcrumbs',

        header : 'partials/header',
        footer : 'partials/footer',
        navigation : 'partials/navigation',
        navigationItem : 'partials/navigationItem'
    }
};

//As far as I can tell, the only order that matters is that the .build(fnE, fnS) method is called last.
metalias

    // MetalSmith's default clean option is true.
    //.clean(true)

    // MetalSmith's default source folder is the src directory
    //.source('./src')

    // MetalSmith's default destination is the build directory
    .destination('./build')

    .use(collections({
        pages: {
            pattern: 'content/pages/*.md'
        },
        posts: {
            pattern: 'content/posts/*.md',
            sortBy: 'date',
            reverse: true
        }
    }))

    .metadata(meta)

    .use(sass({
        outputStyle: 'expanded'
    }))

    .use(markdown())

    .use(permalinks({
        pattern: ':collection/:title'
    }))

    //.use(permalinks())

    .use(navigation())

    .use(templates('swig'))


    // the build method must be passed at least callback function to succeed. Without these functions, no error is thrown and it's very annoying.
    .build(buildFail, buildSuccess)
;
