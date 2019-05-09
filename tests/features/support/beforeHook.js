'use strict';
const apiLib = require('core-cucumber-bdd/src/support/libs/api/_apiLib');
const apickli=require('./apickli');
const environment_base_url = require('../../endpoints_&_urls/testEnvironments').environment_base_url;
const endpoint_base_url = require('../../endpoints_&_urls/testEnvironments').endpoint_base_url;

module.exports = function() {

    let count=1;

    this.Before("~@soa",function() {
        let environment_base=environment_base_url+'/';
        browser.url(environment_base).then(function(){
            console.log('Environment Base URL Set---->',environment_base)
        })
    });

    this.Before("@client",function(scenario,callback) {
        console.log('>>>>> Before Hook for Client journey (tag: @client)>>>>>');
        console.log('\t#SCENARIO:.'+count+'>>> '+scenario.getName().blue);
        this.apiLib = new apiLib.apiLib('http', 'httpbin.org');
        this.apiLib.addRequestHeader('Cache-Control', 'no-cache');
        count++;
        callback();
    });

    this.Before("@customer",function(scenario,callback) {
        console.log('>>>>> Before Hook for Customer journey (tag: @customer) >>>>>');
        console.log('\t#SCENARIO:'+count+'>>> '+scenario.getName().blue);
        this.apiLib = new apiLib.apiLib('http', 'httpbin.org');
        this.apiLib.addRequestHeader('Cache-Control', 'no-cache');
        count++;
        callback();
    });

    this.Before("@soa", function (scenario,callback) {
        console.log('>>>>> Before Hook for SOA services (tag: @soa)>>>>>');
        console.log('\t#SCENARIO:'+count+'>>> '+scenario.getName().blue);
         this.apickli = new apickli.Apickli('http', endpoint_base_url);
        // this.apickli.addRequestHeader('Cache-Control', 'no-cache');
         count++;
        callback();
    });

};

