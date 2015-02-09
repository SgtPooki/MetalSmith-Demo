module.exports = (function(){
    'use strict';

    var Handlebars = require('handlebars');
    var fs         = require('fs');
    var partialsDir = __dirname + '/../templates/partials';

    Handlebars.registerPartial('header', fs.readFileSync(partialsDir + '/header.hbt').toString());
    Handlebars.registerPartial('footer', fs.readFileSync(partialsDir + '/footer.hbt').toString());

})();
