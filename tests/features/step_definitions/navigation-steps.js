'use strict';
const world = require('../support/world.js').World;
const wdio = require('../support/wdio-steps-support.js');
const sinon = require('sinon');
const nock = require('nock');
this.World = world;


const myStepDefinitionsWrapper = function () {

    this.Given(/^I navigate to the "(.*)" page$/, function (base_url) {
        return wdio.navigateToPage(this.config.serverUrls[base_url])

    });

    this.Then(/^the "([^"]*)" is not visible$/, function (selector) {
        return wdio.checkIfNotVisible(this.getSelector(selector))

    });

    this.Given(/^I SET the Cookie Name: "([^"]*)" and Value: "([^"]*)"$/, function (cookieName, cookieValue) {
       return wdio.set_cookie(cookieName, cookieValue)
    });

    this.Given(/^I Get the Cookie by Name: "([^"]*)"$/, function (cookieName) {
       return wdio.get_cookie(cookieName);
    });


    this.Given(/^I SET the LocalStorage Key: "([^"]*)" and Value: "([^"]*)"$/, function (keyToSet,valueToSet) {
       return wdio.set_localStorage(keyToSet,valueToSet);
    });
    this.Given(/^I Get the LocalStorage by Key: "([^"]*)"$/, function (keyToGet) {
       return wdio.get_localStorage(keyToGet);
    });
    this.Given(/^I SET the LocalStorage Key: "([^"]*)" to object$/, function (keyToSet) {
        let valueToSet={"loginId":"CMP001","role":"maker"};
       return wdio.set_localStorage(keyToSet,valueToSet);

    });

    this.Given(/^I create mock response$/, function () {
        console.log('This is MOCK Response ======================>>>>>>>>>>>>>>>>');
        // let fake = sinon.fake();
        // fake.return('apple pi---')
        // fake();
        // fake();
        // console.log(fake.callCount);
      // const xhr= this.sinonServer.useFakeXMLHttpRequest();
       // let fake=this.sinonServer.fake();
       // fake();
       // console.log(fake.callCount)

        // const resp= this.sinonServer.respondWith("GET", "http://cmp-wlp.cmp.sbx.zone/cmp/api/service/v1/colleague/create/pa-user/clientDetails", '400', function (xhr, id) {
        //     //return this.sinonServer.respondWith("GET", "http://cmp-wlp.cmp.sbx.zone/cmp/api/service/v1/colleague/create/pa-user/workflow/create", '400', function (xhr, id) {
        //     //console.log('in herer')
        //
        //     this.sinonServer.useFakeXMLHttpRequest().respond(400, {"Content-Type": "application/json"}, '[{ "id": ' + id + " }]");
        //    // xhr.respond(400, {"Content-Type": "application/json"}, '[{ "id": ' + id + " }]");
        // });
        // console.log('The Response---> ',resp)
        // return resp;

        // console.log(this.server.respondWith("GET", "http://cmp-wlp.cmp.sbx.zone/cmp/api/service/v1/colleague/create/pa-user/clientDetails", '400'));


        // NOCK

       // const scope = nock('http://www.example.com', {
       //  const scope = nock('http://cmp-wlp.cmp.sbx.zone/cmp/api/service/v1/colleague/create/pa-user/clientDetails', {
       //      reqheaders: {
       //          authorization: 'Basic Auth',
       //      },
       //  })
       //      .get('/')
       //      .reply(400);

        var scope = nock('http://cmp-wlp.cmp.sbx.zone/cmp/api/service/v1/colleague/create/pa-user/clientDetails')
            .get('/')
            .reply(404, {
                username: 'pgte',
                email: 'pedro.teixeira@gmail.com',
                _id: '4324243fsd'
            });

        console.log(scope);
    });


    this.Given(/^I SET the LocalStorage referringUrl to url: "([^"]*)"$/, function (refUrl) {

        return wdio.set_localStorage('referringUrl',this.config.serverUrls[refUrl]);
    });
    this.Given(/^I navigate to URL "([^"]*)"$/, function (base_url) {
        return browser.pause(500).url(base_url)
    });

    this.Given(/^I click on button "([^"]*)"$/, function (buttonOne) {
       return browser.click(buttonOne);
    });
    this.Given(/^I click on button "([^"]*)" to get Error$/, function (buttonOne) {

         return browser.click(buttonOne).pause(2000);
        //const eleButton=browser.element(buttonOne)
            // .then(function(){
            //     var scope = nock('http://cmp-wlp.cmp.sbx.zone/cmp/api/service/v1/client/workflow/cancel')
            //         .post('/')
            //         .reply(404, {
            //             username: 'Mock Response',
            //
            //         });
            //
            //     console.log(scope);
            // })
        //eleButton.click;
        // eleButton.onclick.then(function(){
        //     var scope = nock('http://cmp-wlp.cmp.sbx.zone/cmp/api/service/v1/client/workflow/cancel')
        //         .post('/')
        //         .reply(404, {
        //             username: 'pgte',
        //             email: 'pedro.teixeira@gmail.com',
        //             _id: '4324243fsd'
        //         });
        //
        //     console.log(scope);
       // })
        // return browser
        //     .click(buttonOne)
        //     .then(function(){
        //         var scope = nock('http://cmp-wlp.cmp.sbx.zone/cmp/api/service/v1/client/workflow/cancel')
        //             .post('/')
        //             .reply(404, {
        //                 username: 'pgte',
        //                 email: 'pedro.teixeira@gmail.com',
        //                 _id: '4324243fsd'
        //             });
        //
        //         console.log(scope);
        //     }) ;
    });
    this.Given(/^I NOCK the endpoint to Get Mock response "([^"]*)";$/, function (endPoint) {
                var scope = nock(endPoint,{
                    reqheaders: {
                        'Party-Id': '3234567891'
                    },

    })

                    .post('/cancel',{
                        "workflowId":"4000000004"
                    })
                    .reply(404, {
                        username: 'Mock Response',

                    });

                console.log(scope);
    });
    this.Given(/^I click on button "button\#yesCancelWorkflowButton" to get Error123$/, function (arg1, callback) {
        callback.pending();
    });
}

module.exports = myStepDefinitionsWrapper;