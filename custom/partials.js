(function(){
    'use strict';

    var Handlebars = require('handlebars');
    var fs         = require('fs');

    Handlebars.registerPartial('header', fs.readFileSync(__dirname + '/../templates/partials/header.hbt').toString());
    Handlebars.registerPartial('footer', fs.readFileSync(__dirname + '/../templates/partials/footer.hbt').toString());

})();
