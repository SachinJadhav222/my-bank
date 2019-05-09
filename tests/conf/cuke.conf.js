const argv = require('yargs').argv;
const gc = require('../endpoints_&_urls/genericURLs.js');
let featureFilePath;

//Specify the branchname for which bluemix URL should be constructed - Default Value = master
const branch = 'master';

//Specify the browser to be used for suite run
const browser = 'chrome';
//const browser = 'firefox';
// const browser = 'chrome';

//Port on which Selenium instance is running - Should be 4444 for local run, 4445 for Sauce run , 4723 for local Appium run against real devices
const port = 4444;

//********* User Defined Config letiables - End *********//

//To create feature file path - If any feature file name is passed with --ff tag while initiating suite then only that ff is executed
if (argv.ff) {
    featureFilePath = 'tests/features/featureFiles/cmp_rapid_changes/sanity_DONOTUSE/' + argv.ff + '.feature';
}
else {
    featureFilePath = 'tests/features/featureFiles/cbo_travellink/travellink_journey/ViewOrder_Table_DetailPage.feature';
}

exports.config = {
    serverUrls: gc.getURL('non-ci'),

    brandToTest: {
        brandName: ''
    },
    productToTest: {
        productName: ''
    },

// =====================
// Server Configurations
// =====================
// Host address of the running Selenium server. This information is usually obsolete as
// WebdriverIO automatically connects to localhost. Also if you are using one of the
// supported cloud services like Sauce Labs, Browserstack or Testing Bot you also don't
// need to define host and port information because WebdriverIO can figure that our
// according to your user and key information. However if you are using a private Selenium
// backend you should define the host address, port, and path here.
//
    defaultTags: ['~@descoped', '~@manual', '~@wip', '~@mocks'],
    host: '127.0.0.1',
    port: 4444,
    path: '/wd/hub',
// ==================
// Specify Test Files
// ==================
// Define which test specs should run. The pattern is relative to the directory
// from which `wdio` was called. Notice that, if you are calling `wdio` from an
// NPM script (see https://docs.npmjs.com/cli/run-script) then the current working
// directory is where your package.json resides, so `wdio` will be called from there.
//


    specs: [
        featureFilePath
    ],

    maxInstances: 1,
    sync: false,

    ////Performance
    // performanceOptions:{
    //    update: true,
    //    tolerance: 2,
    // 	jsonPath: 'tests/utilities/performanceData/data.json'
    // },


// ========================================
// Accessibility Test Options
// ========================================
// Under the hood, accessibility Test code runs Pa11y, FireEyes & Total Validator on each test page
// Pa11y and FireEyes are run using their respective node modules & hence can be run on all environments
// Total Validator doesnt has respective npm module & requires manual installation on the host env before
    //using it as part of accessibility test code
//Following option can be used to skip Total Validator run if its not installed on host env & should be skipped by accessibility code

    accessibilityRunOptions: {
        run_totalValidator: 1,
        totalValidator_path: 'C:\\Program Files (x86\)/TotalValidatorTool/'
    },


// ============
// Capabilities
// ============
// Define your capabilities here. WebdriverIO can run multiple capabilties at the same
// time. Depending on the number of capabilities WebdriverIO launches several test
// sessions. Within your capabilities you can overwrite the spec and exclude option in
// order to group specific specs to a specific capability.
//
// If you have trouble getting all important capabilities together check out Sauce Labs
// platform configurator. A great tool to configure your capabilities.
// https://docs.saucelabs.com/reference/platforms-configurator
//


    capabilities: [
        {
            chromeOptions: {
                args: ['disable-web-security', 'allow-running-insecure-content']
            },

            'browserName': browser,
            ignoreProtectedModeSettings: true
            //Tested - Real Device - iPhone 6

            // 'platformName':'iOS',
            // 'platformVersion':'9.3',
            // 'deviceName':'iPhone 6',
            // 'udid':'63454c7244efa611df1b88659087cdfb6c2a1c8d',
            // 'browserName': '',
            // 'appium-version': '1.4.13',
            // 'app': 'com.sapient.qa.safarilauncher'


        }

    ],
    framework: 'cucumber',
    reporters: ['spec'],
    reporterOptions: {
        outputDir: 'tests/reports/output/'
    },
//
// If you are using Cucumber you need to specify where your step definitions are located.
    cucumberOpts: {
        timeout: 80000,
        require: ['tests/features/step_definitions/', 'tests/features/support/'],
        ignoreUndefinedDefinitions: false,
        format: 'json'
    },
    logLevel: 'silent',
    coloredLogs: true
};
