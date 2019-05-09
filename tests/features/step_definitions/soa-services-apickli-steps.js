'use strict';
//const apickli=require('../support/apickli.js');
//const world = require('../support/world.js').World;
//this.World = world;

const prettyJson = require('prettyjson');


const stepContext = {};

const prettyPrintJson = function(json) {
    const output = {
        stepContext,
        testOutput: json,
    };

    return prettyJson.render(output, {
        noColor: true,
    });


    this.Given(/^I set Header in JSON format$/, function (text, callback) {
        callback.pending();
    });
};

const callbackWithAssertion = function(callback, assertion) {
    if (assertion.success) {
        callback();
    } else {
        callback(prettyPrintJson(assertion));
    }
};

const myStepDefinitionsWrapper = function () {

    this.Given(/^I set (.*) header to (.*)$/, function(headerName, headerValue, callback) {
       this.apickli.setClientTLSConfiguration(headerName, headerValue)
        callback();
    });


    this.Given(/^I set cookie to (.*)$/, function(cookie, callback) {
        this.apickli.addCookie(cookie);
        callback();
    });

    this.Given(/^I set headers to$/, function(headers, callback) {
        console.log(headers);
        this.apickli.setHeaders(headers.hashes());
        callback();
    });

    this.Given(/^I set Header Name:"([^"]*)" to Value:"([^"]*)"$/, function (headerName,headerValue,callback) {
        //this.setHeader(headerName,headerValue);
         this.apickli.setHeader(headerName,headerValue);
        callback();
    });

    this.Given(/^I set body to (.*)$/, function(bodyValue, callback) {
         this.apickli.setRequestBody(bodyValue);
        callback();
    });

    this.Given(/^I pipe contents of file (.*) to body$/, function(file, callback) {
        this.apickli.pipeFileContentsToRequestBody(file, function(error) {
            if (error) {
                callback(new Error(error));
            }

            callback();
        });
    });

    this.Given(/^I set query parameters to$/, function(queryParameters, callback) {
        this.apickli.setQueryParameters(queryParameters.hashes());
        callback();
    });

    this.Given(/^I set form parameters to$/, function(formParameters, callback) {
        this.apickli.setFormParameters(formParameters.hashes());
        callback();
    });

    this.Given(/^I have basic authentication credentials (.*) and (.*)$/, function(username, password, callback) {
        this.apickli.addHttpBasicAuthorizationHeader(username, password);
        callback();
    });

    this.Given(/^I have (.+) client TLS configuration$/, function(configurationName, callback) {
        this.apickli.setClientTLSConfiguration(configurationName, function(error) {
            if (error) {
                callback(new Error(error));
            }
            callback();
        });
    });

    this.When(/^I GET (.*)$/, function(resource, callback) {
        //resource=this.config.soaEndpoints[resource];
        this.apickli.get(resource, function(error, response) {
            if (error) {
                callback(new Error(error));
            }

            callback();
        });
    });

    // this.Then(/^If I click the row "([^"]*)" then I should the following nested information$/, function (rowName, data) {
    //     //resultPage.clickRow(rowName);
    //     data = dataTable.raw();
    //     return console.log(data);
    // });

    this.When(/^I  GET Request to the Endpoint "([^"]*)" of the base URI "([^"]*)"$/, function (endPoint,baseURI, callback) {
        endPoint=this.config.soaEndpoints[baseURI]+endPoint;
        this.apickli.get(endPoint, function(error, response) {
            if (error) {
                callback(new Error(error));
            }

            callback();
        });
    });


    this.When(/^I POST to (.*)$/, function(resource, callback) {
        this.apickli.post(resource, function(error, response) {
            if (error) {
                callback(new Error(error));
            }

            callback();
        });
    });

    this.When(/^I POST Request to the Endpoint "([^"]*)" of base URI "([^"]*)"$/, function (endPoint,baseURI,callback) {
        endPoint=this.config.soaEndpoints[baseURI]+endPoint;
       // return this.apickli.post(endPoint);
        this.apickli.post(endPoint, function(error, response) {
            if (error) {
                callback(new Error(error));
            }

            callback();
        });

        // this.apickli.post(baseURI+endPoint, function(error, response) {
        //     if (error) {
        //         callback(new Error(error));
        //     }
        //
        //     callback();
        // });
    });

    this.When(/^I PUT (.*)$/, function(resource, callback) {
        this.apickli.put(resource, function(error, response) {
            if (error) {
                callback(new Error(error));
            }

            callback();
        });
    });

    this.When(/^I DELETE (.*)$/, function(resource, callback) {
        this.apickli.delete(resource, function(error, response) {
            if (error) {
                callback(new Error(error));
            }

            callback();
        });
    });

    this.When(/^I PATCH (.*)$/, function(resource, callback) {
        this.apickli.patch(resource, function(error, response) {
            if (error) {
                callback(new Error(error));
            }

            callback();
        });
    });

    this.When(/^I request OPTIONS for (.*)$/, function(resource, callback) {
        this.apickli.options(resource, function(error, response) {
            if (error) {
                callback(new Error(error));
            }

            callback();
        });
    });

    this.Then(/^response header (.*) should exist$/, function(header, callback) {
        const assertion = this.apickli.assertResponseContainsHeader(header);
        callbackWithAssertion(callback, assertion);
    });

    this.Then(/^response header (.*) should not exist$/, function(header, callback) {
       // const assertion = this.apiLib.assertResponseContainsHeader(header);
        const assertion = this.apickli.assertResponseContainsHeader(header);
        assertion.success = !assertion.success;
        callbackWithAssertion(callback, assertion);
    });

    this.Then(/^response body should be valid (xml|json)$/, function(contentType, callback) {
        const assertion = this.apickli.assertResponseBodyContentType(contentType);
        callbackWithAssertion(callback, assertion);
    });

    this.Then(/^response code should be (.*)$/, function(responseCode, callback) {
       // const assertion = this.apickli.assertResponseCode(responseCode);
        const assertion = this.apickli.assertResponseCode(responseCode);
        callbackWithAssertion(callback, assertion);
    });

    this.Then(/^response code should not be (.*)$/, function(responseCode, callback) {
        const assertion = this.apickli.assertResponseCode(responseCode);
        assertion.success = !assertion.success;
        callbackWithAssertion(callback, assertion);
    });

    this.Then(/^response header (.*) should be (.*)$/, function(header, expression, callback) {
        const assertion = this.apickli.assertHeaderValue(header, expression);
        callbackWithAssertion(callback, assertion);
    });

    this.Then(/^response header (.*) should not be (.*)$/, function(header, expression, callback) {
        const assertion = this.apickli.assertHeaderValue(header, expression);
        assertion.success = !assertion.success;
        callbackWithAssertion(callback, assertion);
    });

    this.Then(/^response body should contain (.*)$/, function(expression, callback) {
        const assertion = this.apickli.assertResponseBodyContainsExpression(expression);
        callbackWithAssertion(callback, assertion);
    });

    this.Then(/^response body should not contain (.*)$/, function(expression, callback) {
        const assertion = this.apickli.assertResponseBodyContainsExpression(expression);
        assertion.success = !assertion.success;
       callbackWithAssertion(callback, assertion);
    });

    this.Then(/^response body path (.*) should be (((?!of type).*))$/, function(path, value, callback) {
        const assertion = this.apickli.assertPathInResponseBodyMatchesExpression(path, value);
        callbackWithAssertion(callback, assertion);
    });

    this.Then(/^response body path (.*) should not be (((?!of type).+))$/, function(path, value, callback) {
        const assertion = this.apickli.assertPathInResponseBodyMatchesExpression(path, value);
        assertion.success = !assertion.success;
        callbackWithAssertion(callback, assertion);
    });

    this.Then(/^response body path (.*) should be of type array$/, function(path, callback) {
        const assertion = this.apickli.assertPathIsArray(path);
        callbackWithAssertion(callback, assertion);
    });

    this.Then(/^response body path (.*) should be of type array with length (.*)$/, function(path, length, callback) {
        const assertion = this.apickli.assertPathIsArrayWithLength(path, length);
        callbackWithAssertion(callback, assertion);
    });

    this.Then(/^response body should be valid according to schema file (.*)$/, function(schemaFile, callback) {
        this.apickli.validateResponseWithSchema(schemaFile, function(assertion) {
             callbackWithAssertion(callback, assertion);
        });
    });

    this.Then(/^response body should be valid according to openapi description (.*) in file (.*)$/, function(definitionName, swaggerSpecFile, callback) {
        this.apickli.validateResponseWithSwaggerSpecDefinition(definitionName, swaggerSpecFile, function(assertion) {
            callbackWithAssertion(callback, assertion);
        });
    });

    this.Then(/^I store the value of body path (.*) as access token$/, function(path, callback) {
        this.apickli.setAccessTokenFromResponseBodyPath(path);
        callback();
    });

    this.When(/^I set bearer token$/, function(callback) {
        this.apickli.setBearerToken();
        callback();
    });

    this.Given(/^I store the raw value (.*) as (.*) in scenario scope$/, function(value, variable, callback) {
        this.apickli.storeValueInScenarioScope(variable, value);
        callback();
    });

    this.Then(/^I store the value of response header (.*) as (.*) in global scope$/, function(headerName, variableName, callback) {
        this.apickli.storeValueOfHeaderInGlobalScope(headerName, variableName);
        callback();
    });

    this.Then(/^I store the value of body path (.*) as (.*) in global scope$/, function(path, variableName, callback) {
        this.apickli.storeValueOfResponseBodyPathInGlobalScope(path, variableName);
        callback();
    });

    this.Then(/^I store the value of response header (.*) as (.*) in scenario scope$/, function(name, variable, callback) {
        this.apickli.storeValueOfHeaderInScenarioScope(name, variable);
        callback();
    });

    this.Then(/^I store the value of body path (.*) as (.*) in scenario scope$/, function(path, variable, callback) {
        this.apickli.storeValueOfResponseBodyPathInScenarioScope(path, variable);
        callback();
    });

    this.Then(/^value of scenario variable (.*) should be (.*)$/, function(variableName, variableValue, callback) {
        if (this.apickli.assertScenarioVariableValue(variableName, variableValue)) {
            callback();
        } else {
            callback(new Error('value of variable ' + variableName + ' isn\'t equal to ' + variableValue));
        }
    });


};
module.exports = myStepDefinitionsWrapper;