'use strict';
const expect = require('chai').expect;
const assert = require('chai').assert;
const config = require('./config');
const sinon = require('sinon');
const nock = require('nock');
const yaml = require('js-yaml');
const fs = require("fs");
const yamlMerge = require('yaml-merge');
const glob = require("glob");

const _ = require('lodash');
const http = require('request-promise');


const assertOne = require('assert');
const momentOne = require('moment');
const randomWordsOne = require('random-words');
// const Apickli = require('./apickli');
//const apickli = require('apickli');

//import {Apickli} from './_apickli';

let objYaml = null;
let objData = null;


//let customCommand = require('./WaitForElemReady')();
//browser.addCommand('waitForElemReady', customCommand);

//let dataSelectors = yaml.load(fs.readFileSync('tests/acceptance/wdio/locators/common/ElementLocators.yml'));

//let World = function World() {
function World() {
//console.log('>>>>>>>>>>>>>>>>>>>>>>>>>>', Apickli);
    this.assert = assert;
    this.expect = expect;
    this.client = browser;

    this.lodash = _;
    this.assertOne = assertOne;
    this.momentOne = momentOne;
    this.randomWordsOne = randomWordsOne;
    //this.apickli = apickli;

    this.config = config;
    this.config.soaEndpoints = global.browser.options.soaEndpoints;
    this.config.serverUrls = global.browser.options.serverUrls;
    this.config.brandToTest = global.browser.options.brandToTest;
    this.config.productToTest = global.browser.options.productToTest;
    this.config.capabilities = global.browser.options.capabilities;
    //Performance
    this.config.performanceOptions = global.browser.options.performanceOptions;
    //accessibility
    this.config.accessibilityRunOptions = global.browser.options.accessibilityRunOptions;
    this.TIMEOUT_CONST = 50000;
    this.SESSION_TIMEOUT_CONST = 20000;
    this.client = browser;
    //this.client.timeoutsAsyncScript(15000);
    //this.client.timeoutsImplicitWait(15000);
    this.pause = 7500;
    this.miniPause = 2000;
    this.sinonServer = sinon.createFakeServer();
    this.nock = nock;

    //this.server = sinon.createFakeServer();


    //Transfer Promises
    // let chai = require('chai');
    // let chaiAsPromised = require('chai-as-promised');
    //
    // chai.Should();
    // chai.use(chaiAsPromised);
    // chaiAsPromised.transferPromiseness = this.client.transferPromiseness;

    // if (objData === null) {
    //
    //     objData = yaml.load(fs.readFileSync('tests/files/test-data/Environment1'));
    // }
    //
    // function getData(field) {
    //
    //     let dataValue = objData[field];
    //     return dataValue;
    // }
    //
    //
    // this.getData = function (field) {
    //     let dataValue = objData[field];
    //     return dataValue;
    // };


    if (objYaml === null) {

        glob("tests/locators/*.yml", function (er, files) {
            objYaml = yamlMerge.mergeFiles(files);
        });
    }


    // function getSelector(field) {
    //
    //     let dataSelector = objYaml[field];
    //     return dataSelector;
    // }


    function getSelector(field) {
        let dataSelector = (field.indexOf(' ') > -1) ? '[data-selector*="' : '[data-selector="';

        if (config.lookups[field]) {
            dataSelector = config.lookup.s[field];
        }
        else if (objYaml[field]) {
            dataSelector = objYaml[field];
        }
        else {
            dataSelector = field;
        }
        return dataSelector;
    }

    this.getSelector = function (field) {
        return processSelector(field);
    };

    // this.getSelectorBrowser = function (field) {
    //     let elm1=processSelector(field);
    //     return browser
    //           .waitForVisible(elm1)
    //           .element(elm1);
    // };

    this.getTodaysDate = function () {
        let currentDate = new Date();
        return [('0' + (currentDate.getDate())).slice(-2), ('0' + (currentDate.getMonth() + 1)).slice(-2), currentDate.getFullYear()].join('/');
    };


    this.createRandomString = function () {
        let chars = 'ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz',
            randomString = '',
            rnum;

        for (let i = 0; i < 5; i++) {
            rnum = Math.floor(Math.random() * chars.length);
            randomString += chars.substring(rnum, rnum + 1);
        }
        return randomString;
    };

    function processSelector(selector) {
        let combinedSelector = '';
        //let subSelectors = selector.replace(/\s/ig, '');
        //subSelectors = subSelectors.replace('.', ' ');
        let subSelectors = selector.split('|');
        for (let i = 0; i < subSelectors.length; i++) {
            let resolvedSelector = getSelector(subSelectors[i]);
            if (resolvedSelector.indexOf('|') > -1) {
                combinedSelector += processSelector(resolvedSelector);
            } else {
                combinedSelector += resolvedSelector + ' ';
            }
        }
        return combinedSelector;
    }

//==================================API Test==============================================================
    const self = this;

    /**
     * Performs an HTTP GET request to the given uri
     */
    this.httpGet = function (uri) {
        return _httpRequest({method: 'GET', uri: uri});
    };

    /**
     * Performs an HTTP DELETE request to the given uri
     */
    this.httpDelete = function (uri) {
        return _httpRequest({method: 'DELETE', uri: uri});
    };

    /**
     * Performs an HTTP POST request to the given uri
     */
    this.httpPost = function (uri) {
        return _httpRequest({method: 'POST', uri: uri});
    };

    /**
     * Gets the value of a property by its path
     */
    this.getValue = function (path) {
        return _.get(self.actualResponse, path);
    };

    /**
     * Return console formatted json for humanz
     */
    this.prettyPrintJSON = function (json) {
        return JSON.stringify(json, null, '  ');
    };

    /**
     * Formats the assertion in a humanz readable way
     */
    this.prettyPrintError = function (actualValue, expectedValue) {
        return `\r\nExpected: ${expectedValue}\r\nActual: ${actualValue}\r\nRequest Body:\r\n${self.prettyPrintJSON(self.requestBody)}\r\nResponse Status Code: ${self.statusCode}\r\nResponse Body:\r\n${self.prettyPrintJSON(self.actualResponse)}`;
    };

    /**
     * Internal http request generator
     */
    function _httpRequest(options) {
        if (self.baseUrl) {
            options.uri = self.baseUrl + options.uri;
        }

        return http({
            method: options.method,
            uri: options.uri,
            body: self.requestBody,
            json: true,
            resolveWithFullResponse: true
        }).then(function (response) {

            if (process.env.DEBUG) {
                console.log(response);
            }

            self.actualResponse = response.body;
            self.statusCode = response.statusCode;
        }, function (response) {

            if (process.env.DEBUG) {
                console.log(response);
            }

            // parse the message for a json body
            // the message has the following format
            // XXX - { ...json... }
            const bodyString = response.message.slice(6);
            const body = JSON.parse(bodyString);

            self.actualResponse = body;
            self.statusCode = response.statusCode;
        })
    };
//==================================API Test==============================================================

};


module.exports = function () {
    this.World = World;
};