const newman = require('newman');

newman.run({
    collection: require('./cmp-cbo-api.postman_collection.json'), // can also provide a URL or path to a local JSON file.
    environment: require('./cmp-cbo-api.postman_environment'), // can also provide a URL or path to a local JSON file.
    reporters: 'html',
    reporter: {
        html: {
            export: 'tests/reports/postman-reports/api-test-report.html', // If not specified, the file will be written to `newman/` in the current working directory.
           // template: './customTemplate.hbs' // optional, this will be picked up relative to the directory that Newman runs in.
        }
    }
}, function (err) {
    if (err) { throw err; }
    console.log('postman collection run complete! and Test report is available @ tests/reports/postman-reports/api-test-report.html');
});