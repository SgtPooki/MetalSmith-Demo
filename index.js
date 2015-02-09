var MetalSmith = require('metalsmith');
var markdown   = require('metalsmith-markdown');
var templates   = require('metalsmith-templates');

var metalias = MetalSmith(__dirname); //all paths are relative to __dirname (or whatever you pass here)

var buildSuccess = function buildSuccess() {
    console.log('Site built successfully...');
};
var buildFail = function buildFail(err) {
    console.log('Error: ', err);
};

//As far as I can tell, the only order that matters is that the .build(fnE, fnS) method is called last.
metalias
    // MetalSmith's default clean option is true.
    //.clean(true) 
    // MetalSmith's default source folder is the src directory
    .source('./src') 
    // MetalSmith's default destination is the build directory
    .destination('./build')  

    //plugins
    .use(templates('handlebars'))
    .use(markdown())

    // the build method must be passed at least callback function to succeed. Without these functions, no error is thrown and it's very annoying.
    .build(buildFail, buildSuccess)
;
