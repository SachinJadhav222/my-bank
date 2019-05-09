'use strict';
const world = require('./world.js').World;
this.World = world;


module.exports = {

    navigateToPage: function (base_url) {
        return browser.pause(500).url(base_url)
            .pause(500)
            .then(function () {
                console.log('Base URL >>>' + base_url)
            })
            .pause(500);
    },


    set_cookie: function (cookieName, cookieValue) {
        return browser
            .setCookie({name: cookieName, value: cookieValue})
            .then(() => {
                console.log('Cookie Name >>>> ' + cookieName + ' set to >>> ' + cookieValue);
            })


    },

    get_cookie: function (cookieName) {
        const cookie = browser
            .getCookie(cookieName)
            .then((promised) => {
                console.log("GET cookie by Name >>>>>>>>", cookie, promised);
            });
        return cookie;

    },

    clickButton: function (selector) {
        return browser
            .pause(1000)
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .click(selector)
            .pause(1000)
    },

    clickButtonToGetMockError: function (selector, sinonServer) {
        console.log('***************** We are Here =================>>>>>1');
        return browser
            .click(selector)
            .then(function () {
                console.log('***************** We are Here =================>>>>>2');
                sinonServer.respondWith('http://cmp-wlp.cmp.sbx.zone/cmp/api/service/v1/colleague/create/pa-user/workflow/create', '400', function (xhr, id) {
                    console.log('***************** We are Here =================>>>>>3');
                    xhr.respond(400, {"Content-Type": "application/json"}, '[{ "id": ' + id + " }]");
                    console.log('***************** We are Here =================>>>>>4');
                })

                console.log('***************** We are Here =================>>>>>5');
            })


    },
    clickButtonToGetMockErrorNock: function (selector, nock) {
        console.log('***************** We are Here =================>>>>>1');
        return browser
            .then(function () {
                const scope3 = nock('http://cmp-wlp.cmp.sbx.zone/cmp/api/service/v1/colleague/create/pa-user/workflow/create')
                    .get('/')
                    .replyWithError('something awful happened');

                console.log(scope3)
            })


    },
    set_localStorage: function (keyToSet, valueToSet) {
        return browser
            .localStorage('POST', {key: keyToSet, value: valueToSet})
            // .then((promised) => {
            //     console.log("SET local Storage Name >>>>>>>>", keyToSet, promised);
            // });

        // return browser
        //     .localStorage
        //     .setItem(keyToSet,valueToSet)
        //     .then((promised) => {
        //         console.log("SET local Storage Name >>>>>>>>", keyToSet, promised);
        //     });

    },

    get_localStorage: function (keyToGet) {
        return browser
            .localStorage('GET', keyToGet)
            .then((promised) => {
                console.log("GET local Storage Name >>>>>>>>", keyToGet, promised);
            });
        // return browser
        //     .localStorage
        //     .getItem(keyToGet)
        //     .then((promised) => {
        //         console.log("GET local Storage Name >>>>>>>>", keyToGet, promised);
        //     });

    },

    setLocalStorageURLReferenceAndClick: function (selector, referredUrl) {
        //browser.localStorage('POST', {key: someKey, value: someValue});
        return browser
            .localStorage
            //.getItem()
            .setItem('referringUrl', referredUrl)

    },

    moveMouseToElement: function (selector) {
        return browser
            .pause(1000)
            .moveToObject(selector);
    },

    scrollToElement: function (selector) {
        return browser
            .scroll(selector)
            .then(function () {
                    console.log('Scrolled to Element:' + selector);
                }
            );
    },

    scrollToScreenCoordinates: function (from1, to1) {
        return browser
            .scroll(Number(from1), Number(to1))
            .then(function () {
                    console.log('Scrolled to Coordinates>>>');
                }
            );
    },

    enterInputValue: function (selector, expectedValue) {
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .setValue(selector, expectedValue)
            .pause(500)
    },

    enterKeyStroke: function (selector, expectedValue) {
        let key_stroke = null;
        switch (expectedValue.toLowerCase()) {
            case "space": {
                key_stroke = '\uE00D';

                break;
            }
            case "enter": {
                key_stroke = '\uE007';

                break;
            }
            case "tab": {
                key_stroke = '\uE004';

                break;
            }

        }
        console.log('Entered >>' + expectedValue);
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .clearElement(selector)
            .keys(key_stroke);
    },

    selectDropDownByVisibleText: function (selector, expectedValue) {
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .selectByVisibleText(selector, expectedValue)
            .then(function () {
                console.log('Selected By Text >>', expectedValue + ' from dropdown >>' + selector)
            })
            .pause(500)
    },

    selectDropDownByValue: function (selector, expectedValue) {
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .selectByValue(selector, expectedValue)
            .then(function () {
                console.log('Selected By Value >>', expectedValue + ' from dropdown >>' + selector)
            })
            .pause(500)
    },

    selectDropDownByIndex: function (selector, expectedValue) {
        let index_number = parseInt(expectedValue);
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .selectByIndex(selector, index_number)
            .then(function () {
                console.log('Selected By Index >>' + expectedValue + ' from dropdown >>' + selector);
            })
            .pause(500)
    },

    checkIfSelected: function (selector) {
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .isSelected(selector)
            .then(function () {
                console.log("Is Selected");
            })
    },

    checkIfVisible: function (selector) {
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .isEnabled(selector)
    },

    elementExisted: function (selector) {
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .isExisting(selector)
    },

    checkIfExisted: function (selector) {
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .isExisting(selector)
            .isSelected(selector);
    },

    checkIfNotVisible: function (selector) {
        return browser
            .waitForExist(selector, 1000, true)
            .then(function () {
                console.log('Is NOT Visible in DOM >>' + selector);
            });
        //Return True if the element is NOT visible in DOM
    },

    checkIfDisables: function (selector) {

        return browser
            .waitForVisible(selector)
            .then(function () {
                this.expect(selector).isPresent().to.eventually.be.false;
            }.bind(this));
    },

    verifyTextPresent: function (selector, expectedValue, expect) {
        console.log('Expected Text >>' + expectedValue);
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .getText(selector)
            .then(function (readValue) {
                console.log('Actual Text >>' + readValue);
                expect(readValue).to.contains(expectedValue)
            }.bind(this));
    },

    verifyPartialTextPresent: function (selector, expectedValue, stringToBeReplaced) {
        let subString = expectedValue.replace(stringToBeReplaced, "");
        console.log('Expected Text substring >>' + subString);
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .getText(selector)
            .then(function (readValue) {
                console.log('Actual Text >>' + readValue);
                readValue.match(subString);
            }.bind(this));
    },

    verifyClassAttribute: function (selector, expectedValue, expect) {
        return browser
            .pause(1000)
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .getAttribute(selector, 'class')
            .then(function (readValue) {
                //this.expect(readValue).to.contains(expectedValue);
                expect(readValue).to.contains(expectedValue);
            }.bind(this));
    },

    verifyValueAttributeLenght: function (selector, expectedValue, expect) {
        return browser.getAttribute(selector, 'value').then(function (readValue) {
            console.log('Actual Text >>' + readValue)
            console.log('Actual Text Length >>' + readValue.length)
            console.log('Expected Text Length >>' + Number(expectedValue))
            //this.expect(readValue.length).to.equal(Number(expectedValue));
            expect(readValue.length).to.equal(Number(expectedValue));

        }.bind(this));
    },

    verifyValueAttribute: function (selector, expectedValue, expect) {
        console.log('Expected Text >>' + expectedValue);
        return browser
            .getAttribute(selector, 'value')
            .then(function (readValue) {
                console.log('Actual Text >>' + readValue);
                //this.expect(readValue).to.contains(expectedValue);
                expect(readValue).to.contains(expectedValue);
            }.bind(this));
    },

    verifyPageSource: function (expectedValue, expect) {
        console.log('Expected Text on the Page Source >>' + expectedValue);
        return browser
            .getSource()
            .then(function (readValue) {
                console.log('Actual Text on the Page Source >>' + readValue)
                //this.expect(readValue).to.contains(expectedValue);
                expect(readValue).to.contains(expectedValue);
            }.bind(this));
    },

    verifyHTMLPageSource: function (expectedValue, expect) {
        console.log('Expected Text on the Page Source >>' + expectedValue);
        return browser
            .getHTML()
            .then(function (readValue) {
                console.log('Actual Text on the Page Source >>' + readValue)
                expect(readValue).to.contains(expectedValue);
            }.bind(this));
    },

    verifyHTMlBodyContent: function (expectedValue, expect) {
        return browser
            .getHTML('body')
            .then(function (readValue) {
                // this.expect(readValue).to.include(expectedValue);
                expect(readValue).to.include(expectedValue);
            }.bind(this));
    },

    verifyDefault: function (selector, expectedValue, expect) {
        return browser
            .getValue(selector)
            .then(function (readValue) {
                //this.expect(readValue).to.contains(expectedValue);
                expect(readValue).to.contains(expectedValue);
            }.bind(this));
    },


    verifyEmptyField: function (selector, expect) {
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .getText(selector)
            .then(function (readValue) {
                expect(readValue).to.be.empty;
            }.bind(this));
    },

    verifyAndReadTextInTheField: function (selector, expectedValue, expect) {
        console.log('Expected Message >>' + expectedValue);
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .getValue(selector)
            .then(function (readValue) {
                console.log('Actual Message >>' + readValue);
                expect(readValue).to.contains(expectedValue);
            }.bind(this));
    },

    verifyCheckBoxStatus: function (checkUnCheck, selector, expect) {
        let valueStatus = 0;
        switch (checkUnCheck.toLowerCase()) {
            case"checked": {
                console.log('CheckBox-Checked');
                valueStatus = 1;
                break;
            }
            case"unchecked": {
                console.log('CheckBox-Not Checked');
                valueStatus = 0;
                break;
            }
        }
        return browser
            .scroll(selector)
            .waitForVisible(selector, this.TIMEOUT_CONST)
            .getValue(selector)
            .then(function (readValue) {
                // this.expect(readValue).to.equals(valueStatus);
                expect(readValue).to.equals(valueStatus);
            })

    },


    reloadBrowser: function () {
        console.log("Browser Reloaded...")
        return browser.reload().pause(2000);
    }


}