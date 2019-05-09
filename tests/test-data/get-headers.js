const test_environment = require('../endpoints_&_urls/testEnvironments').test_environment;

module.exports = {
    getHeader: function () {
        switch (test_environment.toLowerCase()) {
            case "sbx": {
                return sbxHeaders()
            }
                break;
            case "st5": {

            }
                break;
            case "sit1": {

                break;
            }
            case "nft": {

                break;
            }
            case "local": {

                break;
            }

        }
    }

}


function sbxHeaders() {
    return {
        pa_user_workflow_retrieve_header: {
                                            "Client - Id": "3234567891",

                                            "User - Login - Id": "CMP001",

                                            "User - Role": "maker / approver",

                                            "Correlation - Id": "5a8f865f0gov7bo7ific"
                                        },

    }
}