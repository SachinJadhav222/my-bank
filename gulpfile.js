const gulp = require('gulp');
const reporter = require('gulp-protractor-cucumber-html-report');

const plugins = {
    gulpWebDriver: require('gulp-webdriver'),
    path: require('path'),
    glob: require('glob'),
    fs: require('fs'),
    exec: require('child_process').exec,
    wdio: require('core-cucumber-bdd'),
};


gulp.task('wdio', function () {
    const isWin = /^win/.test(process.platform);
    const cmd = isWin ? 'wdio.cmd' : 'wdio';

    return gulp.src('tests/conf/cuke.conf.js')
        .pipe(plugins.wdio({
            wdioBin: plugins.path.join(__dirname, 'node_modules', '.bin', cmd)
        }));
});

gulp.task('wdio-ci-docker-colleague', function () {
    const isWin = /^win/.test(process.platform);
    const cmd = isWin ? 'wdio.cmd' : 'wdio';

    return gulp.src('tests/conf/ci-cmp-cbo-bdd-test.cuke.conf.js')
        .pipe(plugins.wdio({
            wdioBin: plugins.path.join(__dirname, 'node_modules', '.bin', cmd)
        }));
});


gulp.task('wdio-colleague', function () {
    const isWin = /^win/.test(process.platform);
    const cmd = isWin ? 'wdio.cmd' : 'wdio';

    return gulp.src('tests/conf/ci-colleague.cuke.conf.js')
        .pipe(plugins.wdio({
            wdioBin: plugins.path.join(__dirname, 'node_modules', '.bin', cmd)
        }));
});
gulp.task('wdio-customer', function () {
    const isWin = /^win/.test(process.platform);
    const cmd = isWin ? 'wdio.cmd' : 'wdio';

    return gulp.src('tests/conf/ci-customer.cuke.conf.js')
        .pipe(plugins.wdio({
            wdioBin: plugins.path.join(__dirname, 'node_modules', '.bin', cmd)
        }));
});

gulp.task('wdio-soa-services', function () {
    const isWin = /^win/.test(process.platform);
    const cmd = isWin ? 'wdio.cmd' : 'wdio';

    return gulp.src('tests/conf/ci-soa-services.cuke.conf.js')
        .pipe(plugins.wdio({
            wdioBin: plugins.path.join(__dirname, 'node_modules', '.bin', cmd)
        }));
});

gulp.task('wdio-cmp-cbo-bdd-test', function () {
    const isWin = /^win/.test(process.platform);
    const cmd = isWin ? 'wdio.cmd' : 'wdio';

    return gulp.src('tests/conf/ci-cmp-cbo-bdd-test.cuke.conf.js')
        .pipe(plugins.wdio({
            wdioBin: plugins.path.join(__dirname, 'node_modules', '.bin', cmd)
        }));
});


let seleniumServer;

/**
gulp.task('selenium', function () {

    //const _ = require('lodash');

    const jsonPath = ('tests/utilities/performanceData/data.json').toString();

    const readJson = fs.readFileSync(jsonPath, 'utf8');

    if (readJson != '') {
        const parseReadJson = JSON.parse(readJson);

        const jsonArray = Object.keys(parseReadJson);

        for (const i = 0; i < jsonArray.length; i++) {

            parseReadJson[jsonArray[i]][2]['ExpectedTimeStatus'] = 'grey';
            parseReadJson[jsonArray[i]][3]['ActualTimeStatus'] = 'grey';

        }
        //const mergedData = _.merge(parseReadJson, myJson);
        fs.writeFileSync(jsonPath, JSON.stringify((parseReadJson), null, 2));
    }
    console.log('inside selenium function...going to click jar exe');
});
     **/

gulp.task('selenium', function() {
    const isWin = /^win/.test(process.platform);
    const Chromeexecutable = isWin
        ? 'node_modules/chromedriver/lib/chromedriver/chromedriver.exe'
        : 'node_modules/chromedriver/bin/chromedriver';
    const IEexecutable = isWin
        ? 'BDD/tests/acceptance/wdio/tools/iedriver/lib/iedriver/IEDriverServer.exe'
        : 'node_modules/iedriver/bin/iedriver';
    const command = isWin
        ? 'java -jar node_modules/selenium-server-standalone-jar/jar/selenium-server-standalone-2.53.1.jar -log ../seleniumLog.txt -Dwebdriver.ie.driver=' +
    plugins.path.resolve(__dirname, IEexecutable) +
    ' -Dwebdriver.chrome.driver=' +
    plugins.path.resolve(__dirname, Chromeexecutable)
        : 'java -jar node_modules/selenium-server-standalone-jar/jar/selenium-server-standalone-2.53.1.jar -log ../seleniumLog.txt -Dwebdriver.chrome.driver=' +
    plugins.path.resolve(__dirname, Chromeexecutable);
    seleniumServer = plugins.exec(command, function() {
        seleniumServer = null;
    });
 });

gulp.task('selenium2', function () {

});

// Use this task to run the test on higher versions of Firefox(55)
gulp.task('selenium3', function () {

    //const _ = require('lodash');

    const jsonPath = ('tests/reports/performanceData/data.json').toString();

    const readJson = fs.readFileSync(jsonPath, 'utf8');

    if (readJson != '') {
        const parseReadJson = JSON.parse(readJson);

        const jsonArray = Object.keys(parseReadJson);

        for (let i = 0; i < jsonArray.length; i++) {

            parseReadJson[jsonArray[i]][2]['ExpectedTimeStatus'] = 'grey';
            parseReadJson[jsonArray[i]][3]['ActualTimeStatus'] = 'grey';

        }
        //const mergedData = _.merge(parseReadJson, myJson);
        fs.writeFileSync(jsonPath, JSON.stringify((parseReadJson), null, 2));
    }

    console.log('inside selenium function...going to click jar exe');
    
    const isWin = /^win/.test(process.platform);
    const Chromeexecutable = isWin
        ? 'node_modules/chromedriver/lib/chromedriver/chromedriver.exe'
        : 'node_modules/chromedriver/bin/chromedriver';
    const IEexecutable = isWin
        ? 'tests/wdio/tools/iedriver/lib/iedriver/IEDriverServer.exe'
        : 'node_modules/iedriver/bin/iedriver';
    const Firefoxexecutable = isWin
        ? 'tests/wdio/tools/geckodriver/geckodriver.exe'
        : 'node_modules/geckodriver/bin/geckodriver';
    const command = isWin
        ? 'java -Dwebdriver.gecko.driver='+ plugins.path.resolve(__dirname, Firefoxexecutable)+ ' -Dwebdriver.chrome.driver='+ plugins.path.resolve(__dirname, Chromeexecutable)+ ' -Dwebdriver.ie.driver='+ plugins.path.resolve(__dirname, IEexecutable)+ ' -jar tests/acceptance/wdio/tools/selenium-standalone-jar/selenium-server-standalone-3.4.0.jar -log ../seleniumLog.txt'
        : 'java -jar node_modules/selenium-server-standalone-jar/jar/selenium-server-standalone-3.4.0.jar -log ../seleniumLog.txt -Dwebdriver.chrome.driver=' +
          plugins.path.resolve(__dirname, Chromeexecutable);
    console.log("11111",command);
    plugins.path.resolve(__dirname, Chromeexecutable);
    seleniumServer = plugins.exec(command, function() {
        seleniumServer = null;
    });
});

gulp.task('cucumbers', ['selenium', 'wdio'], function (cb) {
    if (seleniumServer) {
        process.kill(seleniumServer.pid, 'SIGINT');
    }
    cb();
    process.exit(0);
});

gulp.task('ci-colleague', ['selenium', 'wdio-colleague'], function (cb) {
    if (seleniumServer) {
        process.kill(seleniumServer.pid, 'SIGINT');
    }
    cb();
    process.exit(0);
});

gulp.task('ci-customer', ['selenium', 'wdio-customer'], function (cb) {
    if (seleniumServer) {
        process.kill(seleniumServer.pid, 'SIGINT');
    }
    cb();
    process.exit(0);
});

gulp.task('ci-soa-services', ['wdio-soa-services'], function (cb) {
    if (seleniumServer) {
        process.kill(seleniumServer.pid, 'SIGINT');
    }
    cb();
    process.exit(0);
});

gulp.task('ci-cmp-cbo-bdd', ['selenium', 'wdio-cmp-cbo-bdd-test'], function (cb) {
    if (seleniumServer) {
        process.kill(seleniumServer.pid, 'SIGINT');
    }
    cb();
    process.exit(0);
});

gulp.task('ci-docker-colleague', ['selenium2', 'wdio-ci-docker-colleague'], function (cb) {

});



const yaml = require('js-yaml');
const fs = require("fs");
const mergedArray = [];


gulp.task('findDuplicates', function (cb) {

    //const gruntFile = require('grunt/lib/grunt/file');


    //Load all the Yaml files available inside pom folder
   // return plugins.glob("tests/locators/colleague/*.yml", function (er, files) {
    return plugins.glob("tests/locators/*.yml", function (er, files) {
        let isUnique = true;

        files.forEach(function (filePath) {
            //if (gruntFile.exists(filePath)) {

            try {

                const objYaml = yaml.load(fs.readFileSync(filePath));


                //console.log(objYaml);
                for (let p in objYaml) {

                    if (mergedArray.indexOf(p) > -1) {
                        isUnique = false;
                        console.log('<<<<<< ' + p + ' is a DUPLICATE ENTRY >>>>>>');
                        isUnique = false;

                    }
                    else {
                        mergedArray.push(p);
                    }
                }

            }
            catch (err) {
                console.log('<<<<<<' + err + '>>>>>>');
            }
            //}
        });

        if (isUnique) {
            console.log('<<<<<<< I am Unique :) >>>>>>>');
        }
        else {
            console.log('<<<<<<< I am NOT Unique :( >>>>>>>');
        }
        //console.log(mergedArray[0]);
        cb();
    })


});


