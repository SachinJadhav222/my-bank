module.exports = function () {

    this.After("~@soa",function () {
       return browser.deleteCookie().then(function () {
            console.log('Cookies cleared ---------->>'.yellow)
        });

    });

    this.After("~@soa",function () {
       return browser.localStorage('DELETE').then(function () {
            console.log('Local Storage Cleared ---------->>'.yellow)
        })
    });

    this.After("~@soa", function (scenario, callback) {
        let isFailed = scenario.isFailed();
        if (isFailed) {
            console.log('<<<< Scenario Failed  >>>>'.red);
        }
        if (!isFailed) {
            console.log('***** Scenario Passed ***** '.green);
        }
        if (isFailed || !isFailed) {
            return this.client.saveScreenshot().then(function (stream) {

                let decodedImage = new Buffer(stream, 'base64').toString('binary');
                scenario.attach(decodedImage, 'image/png', callback);

            }, function (err) {
                callback(err);
            });
        }
        else {
            callback();
        }
    });



};


