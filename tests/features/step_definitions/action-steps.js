'use strict';
const world = require('../support/world.js').World;
const wdio = require('../support/wdio-steps-support.js');
this.World = world;


const myStepDefinitionsWrapper = function () {

    this.When(/^I select by Text "([^"]*)" from the dropdown "([^"]*)"$/, function (expectedValue, selector) {

        return wdio.selectDropDownByVisibleText(this.getSelector(selector), expectedValue);


    });

    this.Then(/^I select by Value "([^"]*)" from the dropdown "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.selectDropDownByValue(this.getSelector(selector), expectedValue);

    });

    this.Then(/^I select by Index "([^"]*)" from the dropdown "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.selectDropDownByIndex(this.getSelector(selector), expectedValue);
    });

    this.Then(/^I scroll to the element "([^"]*)"$/, function (selector) {
        return wdio.scrollToElement(this.getSelector(selector));
    });

    this.When(/^I click on Mandatory Field "([^"]*)"$/, function (selector) {
        return wdio.clickButton(this.getSelector(selector));

    });

    this.Then(/^I click out of the Box on "([^"]*)"$/, function (selector) {
        return wdio.clickButton(this.getSelector(selector));
    });

    this.Then(/^I navigate back to the previous page by selecting the "([^"]*)"$/, function (selector) {
        return wdio.clickButton(this.getSelector(selector));
    });

    this.Given(/^I click on "([^"]*)"$/, function (selector) {
        return wdio.clickButton(this.getSelector(selector));

    });

    this.Then(/^I scroll the Page Coordinates from "([^"]*)" to "([^"]*)"$/, function (from1, to1) {
        return wdio.scrollToScreenCoordinates(from1, to1);
    });

    this.When(/^I move mouse over Tooltip "([^"]*)"$/, function (selector) {
        return wdio.moveMouseToElement(this.getSelector(selector));
    });

    this.When(/^I set the "([^"]*)" to an invalid value as “(.*)”$/, function (selector, expectedValue) {
        wdio.enterInputValue(this.getSelector(selector), expectedValue);

    });

    this.When(/^I entered "([^"]*)" in "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.enterInputValue(this.getSelector(selector), expectedValue);


    });

    this.When(/^I entered key stroke "([^"]*)" in "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.enterKeyStroke(this.getSelector(selector), expectedValue);

    });

    this.Then(/^the assign audit role should be reset back to "([^"]*)"$/, function (selector) {
        return wdio.checkIfSelected(this.getSelector(selector));
    });

    this.Then(/^the "([^"]*)" against the primary administrator you are creating will become your primary contact label is not selected$/, function (selector) {
        wdio.checkIfDisables(this.getSelector(selector), this.expect);

    });

    this.Then(/^I can select the "([^"]*)" against the primary administrator you are creating will become your primary label$/, function (selector) {
        return wdio.clickButton(this.getSelector(selector));
    });

    this.Then(/^I uncheck the checkbox "([^"]*)"$/, function (selector) {
        return wdio.clickButton(this.getSelector(selector));
    });

    this.Given(/^I set the "([^"]*)" empty by clicking on "([^"]*)"$/, function (selector, selector2) {
        selector = this.getSelector(selector);
        let second_selector = this.getSelector(selector2);
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .doubleClick(selector)
            .pause(1000)
            .scroll(second_selector)
            .click(second_selector);

    });

    this.Given(/^I click on "([^"]*)" to get Mock Error Message$/, function (selector) {
       // return wdio.clickButtonToGetMockError(this.getSelector(selector),this.sinonServer);
        return wdio.clickButtonToGetMockErrorNock(this.getSelector(selector),this.nock);
    });

    this.Given(/^I click on "([^"]*)" and referred to "([^"]*)"$/, function (selector,referredUrl) {
        return wdio.setLocalStorageURLReferenceAndClick(this.getSelector(selector),this.config.serverUrls[referredUrl]);
    });
};
module.exports = myStepDefinitionsWrapper;