//! DO NOT TOUCH THIS FILE!!! THIS FILE ALLOWS FOR LIVE UPDATES WHEN IN DEV MODE 
var fs = require('fs')
fs.readFile('../fxmanifest.lua', 'utf8', function (err, data) {
    if (err) throw err;

    if (process.env.NODE_ENV === 'development') {
        data = data.replaceAll("ui/dist/index.html", "ui/shim.html")
    } else {
        data = data.replaceAll("ui/shim.html", "ui/dist/index.html")
    }

    fs.writeFile ('../fxmanifest.lua', data, function(err) {
        if (err) throw err;
        console.log('fxmanifest file updated');
    });
});