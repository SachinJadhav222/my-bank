const test_environment=require('../endpoints_&_urls/testEnvironments').test_environment;

module .exports={
    getCookies: function(){
        switch (test_environment.toLowerCase()) {
            case "sbx": {
                return sbxCookies()
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


function sbxCookies(){
return {
    user_id_cookie:'3234567891',
    correlation_id_cookie: 'mockCorrelationID'
}
}