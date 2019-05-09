'use strict';
const world = require('../support/world.js').World;
this.World = world;


const myStepDefinitionsWrapper = function () {

    this.Given(/^I set JSON Request body:$/i, function (data) {
        this.requestBody = JSON.parse(data);
    });

    this.Given(/^The request data$/i, function (data) {
        const dataRows = data.hashes();
        const firstRow = dataRows[0];
        this.requestBody = firstRow;
    });

    this.Given(/^The property "(.*)" is todays date$/i, function (path) {
        this.requestBody = this.requestBody || {};
        const ts = this.momentOne().format('MM-DD-YYYY');
        this.lodash.set(this.requestBody, path, ts);
    });

    this.Given(/^The property "(.*)" is a random word$/i, function (path) {
        this.requestBody = this.requestBody || {};
        const value = this.randomWordsOne();
        this.lodash.set(this.requestBody, path, value);
    });

    this.Given(/^The property "(.*)" is "(.*)" random words$/i, function (path, nbr) {
        this.requestBody = this.requestBody || {};
        const value = this.randomWordsOne({ exactly: parseInt(nbr), join: ' ' });
        this.lodash.set(this.requestBody, path, value);
    });

    this.Given(/^The property "(.*)" is todays date with format "(.*)"$/i, function (path, format) {
        this.requestBody = this.requestBody || {};
        const ts = this.momentOne().format(format);
        this.lodash.set(this.requestBody, path, ts);
    });

    this.Given(/^The property "(.*)" is a date "(\d*)" days in the future$/i, function (path, days) {
        this.requestBody = this.requestBody || {};
        const ts = this.momentOne().add(days, 'day').format('MM-DD-YYYY');
        this.lodash.set(this.requestBody, path, ts);
    });

    this.Given(/^The property "(.*)" is a date "(\d*)" days in the past$/i, function (path, days) {
        this.requestBody = this.requestBody || {};
        const ts = this.momentOne().subtract(days, 'day').format('MM-DD-YYYY');
        this.lodash.set(this.requestBody, path, ts);
    });

    this.Given(/^the property "(.*)" is set to "(.*)"$/i, function (path, value) {
        this.requestBody = this.requestBody || {};
        this.lodash.set(this.requestBody, path, value);
    });

    this.Given(/^the property "(.*)" is set to the response property "(.*)"$/i, function (path, oldPath) {
        this.requestBody = this.requestBody || {};
        this.lodash.set(this.requestBody, path, _.get(this.actualResponse, oldPath));
    });

    // this.When(/^I make a GET request to "(.*)"$/i, function (uri) {
    //     return this.httpGet(this.config.soaEndpoints[uri]);
    // });
    //
    // this.When(/^I make a DELETE request to "(.*)"$/i, function (uri) {
    //     return this.httpDelete(this.config.soaEndpoints[uri]);
    // });
    //
    // this.When(/^I make a POST request to "(.*)"$/i, function (uri) {
    //     return this.httpPost(this.config.soaEndpoints[uri]);
    // });

    this.Then(/^The response should be "(.*)"$/i, function (expectedResponse, callback) {
        this.assertOne.equal(this.actualResponse, expectedResponse, `\r\nExpected: ${expectedResponse}\r\nActual: ${this.actualResponse}`);
        callback();
    });

    this.Then(/^The response property "(.*)" should be "(.*)"$/i, function (path, expectedValue, callback) {
        const actualValue = this.getValue(path);
        this.assertOne.equal(actualValue, expectedValue, this.prettyPrintError(actualValue, expectedValue));
        callback();
    });

    this.Then(/^The response status code should be "(.*)"$/i, function (expectedValue, callback) {
        this.assertOne.equal(this.statusCode, expectedValue, this.prettyPrintError(this.statusCode, expectedValue));
        callback();
    });

    this.When(/^I make POST Request to the Endpoint "([^"]*)" of base URI "([^"]*)"$/, function (endPoint,baseURI) {
        return this.httpPost(this.config.soaEndpoints[baseURI]+endPoint);
    });
    this.When(/^I make GET Request to the Endpoint "([^"]*)" of base URI "([^"]*)"$/, function (endPoint,baseURI) {
        return this.httpGet(this.config.soaEndpoints[baseURI]+endPoint);
    });
    this.When(/^I make  DELETE Request to the Endpoint "([^"]*)" of base URI "([^"]*)"$/, function (endPoint,baseURI) {
        return this.httpDelete(this.config.soaEndpoints[baseURI]+endPoint);
    });

};

module.exports = myStepDefinitionsWrapper;