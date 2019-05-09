const test_environment = 'sbx';
//const test_environment = 'st5';
//const test_environment = 'sit1';
//const test_environment = 'nft';
//const test_environment = 'local';

console.log('Test Environment: ' + test_environment);
// Environment Base Url

const SBX_URL = 'http://cmp-cwa-coll.cmp.sbx.zone';
const SBX_ENDPOINT = 'http://cmp-wlp.cmp.sbx.zone';
const ST5_URL = 'https://cmpadmin-st5.intranet.test.group:31200';
const ST5_ENDPOINT = 'https://cmpadmin-st5.intranet.test.group:31200';
const SIT1_URL = 'https://cmpadmin-sit1.intranet.test.group';
const SIT1_ENDPOINT = 'https://cmpadmin-sit1.intranet.test.group';
const NFT_URL = 'https://cmpadmin-nft.intranet.test.group';
const NFT_ENDPOINT = 'https://cmpadmin-nft.intranet.test.group';
const LOCAL_URL = 'http://localhost:3000';
const LOCAL_ENDPOINT = 'http://localhost:3000';

let environment_base_url = null;
let endpoint_base_url = null;
switch (test_environment.toLowerCase()) {
    case "sbx": {
        environment_base_url = SBX_URL;
        endpoint_base_url=SBX_ENDPOINT;
    }
        break;
    case "st5": {
        environment_base_url = ST5_URL;
        endpoint_base_url=ST5_ENDPOINT;
    }
        break;
    case "sit1": {
        environment_base_url = SIT1_URL;
        endpoint_base_url=SIT1_ENDPOINT;
        break;
    }
    case "nft": {
        environment_base_url = NFT_URL;
        endpoint_base_url=NFT_ENDPOINT;
        break;
    }
    case "local": {
        environment_base_url = LOCAL_URL;
        endpoint_base_url=LOCAL_ENDPOINT;
        break;
    }

}

module.exports.environment_base_url=environment_base_url;
module.exports.endpoint_base_url=endpoint_base_url;
module.exports.test_environment=test_environment;

