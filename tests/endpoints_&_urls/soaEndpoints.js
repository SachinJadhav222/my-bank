'use strict';
const endpoint_base_url = require('./testEnvironments').endpoint_base_url;

module.exports = {
    getSoaEndPoint: function () {

        return {
            json_placeholder_api: 'https://jsonplaceholder.typicode.com',
            cmp_api_colleague_create_pa_user: endpoint_base_url + '/cmp/api/service/v1/colleague/create/pa-user',
            cmp_api_colleague_client_workflow: endpoint_base_url + '/cmp/api/service/v1/client/workflow',

        }
    },
};

