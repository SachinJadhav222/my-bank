'use strict';
const world = require('../support/world.js').World;
const wdio = require('../support/wdio-steps-support.js');
this.World = world;

const myStepDefinitionsWrapper = function () {

    this.Then(/^I should see Page Heading "([^"]*)" as "([^"]*)"$/, function (expectedValue, selector) {
       return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see Page Heading "([^"]*)" at "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see Page Heading referring to "([^"]*)" at "([^"]*)"$/, function (expectedValue, selector) {
        localStorage.setItem('referringUrl', 'http://cmp-cwa-coll.cmp.sbx.zone/mockLandingPage');
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I see an "([^"]*)" as "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see Mandatory field "([^"]*)" is Highlighted RED color$/, function (selector) {
        let expectedValue = 'is-invalid is-valid form-control';
        return wdio.verifyClassAttribute(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see "([^"]*)" outline is Highlighted RED color$/, function (selector) {
        let expectedValue = 'is-invalid is-valid form-control';
        return wdio.verifyClassAttribute(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see Mandatory field "([^"]*)" is Highlighted RED$/, function (selector) {
        let expectedValue = 'is-invalid form-control';
        return wdio.verifyClassAttribute(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see new email field "([^"]*)" is Highlighted RED$/, function (selector) {
        let expectedValue = 'is-invalid is-valid form-control';
        return wdio.verifyClassAttribute(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see Mandatory field "([^"]*)" is Highlighted BLUE$/, function (selector) {
        let expectedValue = 'is-valid form-control';
        return wdio.verifyClassAttribute(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see Mandatory field "([^"]*)" is Highlighted GREEN$/, function (selector) {
        let expectedValue = 'is-valid form-control';
        return wdio.verifyClassAttribute(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see Non\-Mandatory field "([^"]*)" is Highlighted GREEN$/, function (selector) {
        let expectedValue = 'form-control';
        return wdio.verifyClassAttribute(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see Error Message "([^"]*)" displayed at "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see "([^"]*)" is Selected$/, function (selector) {
        return wdio.checkIfSelected(this.getSelector(selector));
    });
    this.Then(/^I should see "([^"]*)" is Disabled$/, function (selector) {
        let expectedValue = 'float-left btn btn-primary btn-lg disabled';
        return wdio.verifyClassAttribute(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see "([^"]*)" is Visible$/, function (selector) {
        return wdio.checkIfVisible(this.getSelector(selector));
    });
    this.Then(/^I should see "([^"]*)" existed$/, function (selector) {
        return wdio.elementExisted(this.getSelector(selector));
    });
    this.Then(/^I should see a message "([^"]*)" displayed as "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see Non\-Mandatory field "([^"]*)" is Highlighted RED$/, function (selector) {
        let expectedValue = 'is-invalid form-control';
        return wdio.verifyClassAttribute(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see a "([^"]*)" in Page Source$/, function (expectedValue) {
        return wdio.verifyPageSource(expectedValue, this.expect);
    });
    this.Then(/^I should see a "([^"]*)" as "([^"]*)" in Page Source$/, function (selector, expectedValue) {
        return wdio.verifyHTMLPageSource(expectedValue, this.expect);
    });
    this.Given(/^I am on the "([^"]*)" displayed as "([^"]*)"$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see "([^"]*)" displayed as "([^"]*)"$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Given(/^I should see "([^"]*)" existed and preselected$/, function (selector) {
        return wdio.checkIfExisted(this.getSelector(selector));
    });
    this.Then(/^I should see the "([^"]*)" is Activated$/, function (selector) {
        return wdio.checkIfVisible(this.getSelector(selector));
    });
    this.Then(/^I can see the "([^"]*)" as "([^"]*)"$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see the "(.*)" as "(.*)" on the text entry field$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I am taken back to the "([^"]*)" page as "([^"]*)"$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see a "([^"]*)" as "([^"]*)"$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^the "([^"]*)" label is displayed as “(.*)”$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^the "([^"]*)" is displayed as "(.*)"$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^the "([^"]*)" is defaulted to “(.*)”$/, function (selector, expectedValue) {
        return wdio.verifyDefault(this.getSelector(selector), expectedValue, this.expect);
    });
    this.When(/^I set the "([^"]*)" to a valid value as “(.*)”$/, function (selector, expectedValue) {
        return wdio.enterInputValue(this.getSelector(selector), expectedValue)
    });
    this.Then(/^the "([^"]*)" is activated and enabled$/, function (selector) {
        return wdio.checkIfVisible(this.getSelector(selector));
    });
    this.Then(/^the "([^"]*)" page is displayed as “(.*)”$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Given(/^I should see the "([^"]*)" is visible$/, function (selector) {
        return wdio.checkIfVisible(this.getSelector(selector));
    });
    this.Then(/^I should see "([^"]*)" is visible & displayed$/, function (selector) {
        return wdio.checkIfVisible(this.getSelector(selector));
    });
    this.Then(/^I should see Tooltip text "([^"]*)" displayed$/, function (expectedValue) {
        return wdio.verifyHTMlBodyContent(expectedValue, this.expect);
    });
    this.Then(/^the "([^"]*)" is visible$/, function (selector) {
        return wdio.checkIfVisible(this.getSelector(selector));
    });
    this.When(/^I click on the "([^"]*)" from the check and confirm popup screen$/, function (selector) {
        return wdio.checkIfVisible(this.getSelector(selector));
    });
    this.Then(/^I should see the landing page "([^"]*)" as "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I reload the page$/, function () {
        return wdio.reloadBrowser();
    });
    this.Then(/^I should see "([^"]*)" list displayed$/, function (selector) {
        return wdio.checkIfVisible(this.getSelector(selector));
    });
    this.Then(/^the "([^"]*)" is displayed in the "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^the "([^"]*)" is activated$/, function (selector) {
        return wdio.checkIfVisible(this.getSelector(selector));
    });
    this.Given(/^the OCB coarse grain role "([^"]*)" existed$/, function (selector) {
        return wdio.checkIfSelected(this.getSelector(selector));
    });
    this.Given(/^the OCB coarse grain role "([^"]*)" existed and preselected$/, function (selector) {
        return wdio.checkIfSelected(this.getSelector(selector));
    });
    this.Given(/^the Cash management and payments coarse grain role "([^"]*)" existed and preselected$/, function (selector) {
        return wdio.checkIfSelected(this.getSelector(selector));
    });
    this.Given(/^the Cash management and payments coarse grain role "([^"]*)" existed and uncheckable$/, function (selector) {
        return wdio.checkIfSelected(this.getSelector(selector));
    });
    this.Then(/^the OCB coarse grain role "([^"]*)" existed and uncheckable/, function (selector) {
        return wdio.checkIfSelected(this.getSelector(selector));
    });
    this.Given(/^I could see "([^"]*)" as "([^"]*)"$/, function (selector, expectedValue) {
        wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Given(/^I should see "([^"]*)" existed$/, function (selector) {
        return wdio.elementExisted(this.getSelector(selector));
    });
    this.Then(/^I could see "([^"]*)"$/, function (selector) {
        return wdio.checkIfVisible(this.getSelector(selector));
    });
    this.Then(/^I should be taken back to "([^"]*)" displayed as "([^"]*)"$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Given(/^I see the "([^"]*)" as "([^"]*)"$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^the title "([^"]*)" is displayed as "([^"]*)"$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Given(/^I can see the popup title for "([^"]*)" as "([^"]*)"$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });

    this.When(/^I should see second primary admin message "([^"]*)" displayed as "([^"]*)"$/, function (selector, expectedValue) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I can only see first "([^"]*)" character displayed in "([^"]*)"$/, function (max_lenght, selector) {
        return wdio.verifyValueAttributeLenght(this.getSelector(selector), max_lenght, this.expect);
    });
    this.Then(/^I can see the form field is pre\-populated as "([^"]*)" at the "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.verifyValueAttribute(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I read "([^"]*)" from "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.verifyValueAttribute(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I can Read field is pre\-Selected as "([^"]*)" at the "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I can Read field is pre\-populated as "([^"]*)" at the "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.verifyValueAttribute(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see "([^"]*)" as "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see the "([^"]*)" as "([^"]*)"$/, function (selector, expectedValue) {
        wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });

    this.Then(/^I should see Existing Primary Admin as "([^"]*)","([^"]*)","([^"]*)" at "([^"]*)"$/, function (title, firstName, lastName, selector) {
        let existingAdmin = title + " " + firstName + " " + lastName;
        return wdio.verifyTextPresent(this.getSelector(selector), existingAdmin, this.expect);
    });

    this.Then(/^I should see Sub Heading "([^"]*)" at "([^"]*)"$/, function (expectedValue, selector) {
        return wdio.verifyTextPresent(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Then(/^I should see CheckBox "([^"]*)" is "([^"]*)"$/, function (checkUnCheck, selector) {
        return wdio.verifyCheckBoxStatus(this.getSelector(selector), checkUnCheck, this.expect);
    });
    this.Then(/^the "([^"]*)" is empty$/, function (selector) {
        return wdio.verifyEmptyField(this.getSelector(selector), this.expect);
    });
    this.Then(/^I should see text field "([^"]*)" displayed as "([^"]*)"$/, function (selector, expectedValue) {
        return wdio.verifyAndReadTextInTheField(this.getSelector(selector), expectedValue, this.expect);
    });

    this.Then(/^I should see User Name as "([^"]*)","([^"]*)","([^"]*)" at "([^"]*)"$/, function (title, firstName, lastName, selector) {
        let existingUser = title + " " + firstName + " " + lastName;
        return wdio.verifyTextPresent(this.getSelector(selector), existingUser, this.expect);
    });
    this.Then(/^I should see checkbox "([^"]*)" is checked$/, function (selector) {
        wdio.checkIfSelected(this.getSelector(selector));
    });
    this.Then(/^the "([^"]*)" is disabled$/, function (selector) {
        wdio.checkIfDisables(this.getSelector(selector), this.expect);
    });
    this.Given(/^I should see the checkbox "([^"]*)" is preselected$/, function (selector) {
        return wdio.checkIfVisible(this.getSelector(selector));
    });
    this.Given(/^I should read "([^"]*)" is displayed at "([^"]*)"$/, function (expectedValue,selector) {
        return wdio.verifyAndReadTextInTheField(this.getSelector(selector), expectedValue, this.expect);
    });
    this.Given(/^I should see Partial Text Present "([^"]*)" without "([^"]*)" as "([^"]*)"$/, function (expectedValue,stringToBeReplaced,selector) {
        return wdio.verifyPartialTextPresent(this.getSelector(selector),expectedValue,stringToBeReplaced,this.expect)
    });

};
module.exports = myStepDefinitionsWrapper;

