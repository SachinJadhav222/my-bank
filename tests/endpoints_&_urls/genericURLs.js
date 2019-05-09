const environment_base_url = require('./testEnvironments').environment_base_url;
module.exports = {

    getURL: function () {
        return {
            /** Mock Pages for SBX only**/
            workflow_search: environment_base_url + '/workflowSearch',

            /** =================== Colleague =======================  **/
            colleague_create_client_url: environment_base_url + '/colleague/create-client/?loginId=CMP001',

            /*** Colleague Search workflow ****/
            colleague_mock_landing_page: environment_base_url + '/mockLandingPage/?journeyType=colleague',
            approved_maker: environment_base_url + '/colleague/create-client/workflow/2063077318/?loginId=CMP001',
            cancelled_maker: environment_base_url + '/colleague/create-client/workflow/3063077318/?loginId=CMP001',
            rejected_maker: environment_base_url + '/colleague/create-client/workflow/4063077318/?loginId=CMP001',
            pending_maker_MVP: environment_base_url + '/colleague/create-client/workflow/5063077318/?loginId=CMP001',
            pending_maker_own_workflow: environment_base_url + '/colleague/create-client/workflow/9063077318/?loginId=CMP001',
            approved_approver: environment_base_url + '/colleague/create-client/workflow/6063077318/?loginId=CMP002',
            cancelled_approver: environment_base_url + '/colleague/create-client/workflow/7063077318/?loginId=CMP002',
            colleague_pending_approver_MVP: environment_base_url + '/colleague/create-client/workflow/8063077318/?loginId=CMP002',
            pending_approver_Own_Workflow: environment_base_url + '/colleague/create-client/workflow/1006307731/?loginId=CMP002',
            rejected_approver: environment_base_url + '/colleague/create-client/workflow/1106307731/?loginId=CMP002',
            colleague_workflow_mock_landing_page: environment_base_url + '/createclientworkflowsearch',

            /** ================= Customer =========================== **/
            volvo_primary_admin: environment_base_url + '/client/create-user/?userId=3234567891',
            volvo_secondary_admin: environment_base_url + '/client/create-user/?userId=3234567892',
            shell_primary_admin: environment_base_url + '/client/create-user/?userId=3234567893',
            shell_secondary_admin: environment_base_url + '/client/create-user/?userId=3234567894',

            /*** Customer Search workflow ****/
            customer_maker_approved: environment_base_url + '/client/create-user/workflow/4000000001/?userId=6234567891',
            customer_maker_cancelled: environment_base_url + '/client/create-user/workflow/4000000002/?userId=6234567891',
            customer_maker_rejected: environment_base_url + '/client/create-user/workflow/4000000003/?userId=6234567891',

            customer_approver_approved: environment_base_url + '/client/create-user/workflow/4000000005/?userId=3234567891',
            customer_approver_cancelled: environment_base_url + '/client/create-user/workflow/4000000006/?userId=3234567891',
            customer_approver_rejected: environment_base_url + '/client/create-user/workflow/4000000010/?userId=3234567891',

            customer_created_by_maker_log_as_maker: environment_base_url + '/client/create-user/workflow/4000000007/?userId=6234567891',
            customer_created_by_approver_log_as_approver: environment_base_url + '/client/create-user/workflow/4000000004/?userId=3234567891',
            customer_created_by_maker_log_as_approver: environment_base_url + '/client/create-user/workflow/4000000008/?userId=3234567891',
            customer_created_by_approver_log_as_maker: environment_base_url + '/client/create-user/workflow/4000000009/?userId=6234567891',

            customer_approver_own_workflow_pending: environment_base_url + '/client/create-user/workflow/4000000004/?userId=3234567891',
            customer_maker_own_workflow_pending: environment_base_url + '/client/create-user/workflow/4000000007/?userId=6234567891',
            customer_approver_non_own_workflow_pending: environment_base_url + '/client/create-user/workflow/4000000008/?userId=3234567891',
            customer_maker_non_own_workflow_pending: environment_base_url + '/client/create-user/workflow/4000000009/?userId=6234567891',
            create_user_mock_workflow_landing_page: environment_base_url + '/createuserworkflowsearch',

            /** ================ Edit User ========================== **/
            edit_user_primary_admin_client_volvo: environment_base_url + '/client/edit-user/?userId=6234567891',
            edit_user_secondary_admin_client_volvo: environment_base_url + '/client/edit-user/?userId=6234567892',

            /** ================ PA User ========================== **/
            pa_user_mock_landing_page_url: environment_base_url+ '/createPAUser',
            pa_user_mock_workflow_landing_page_url: environment_base_url+ '/createpauserworkflowsearch',

            //pa_user_Volvo_primary_admin_create_new_user_url: environment_base_url + '/colleague/create/pa-user/?loginId=3234567891',
            pa_user_Volvo_primary_admin_create_new_user_url: environment_base_url + '/colleague/create/pa-user/?loginId=CMP001',
            //pa_user_Volvo_secondary_admin_create_new_user_url: environment_base_url + '/colleague/create/pa-user/?loginId=3234567892',
            pa_user_Volvo_secondary_admin_create_new_user_url: environment_base_url + '/colleague/create/pa-user/?loginId=CMP002',
           // pa_user_Shell_primary_admin_create_new_user_url: environment_base_url + '/colleague/create/pa-user/?loginId=3234567893',
            pa_user_Shell_primary_admin_create_new_user_url: environment_base_url + '/colleague/create/pa-user/?loginId=CMP001',
           // pa_user_Shell_secondary_admin_create_new_user_url: environment_base_url + '/colleague/create/pa-user/?loginId=3234567894',
            pa_user_Shell_secondary_admin_create_new_user_url: environment_base_url + '/colleague/create/pa-user/?loginId=CMP002',

            pa_user_workflow_created_by_maker_approved_url:environment_base_url+'/colleague/create/pa-user/workflow/2063077318/?loginId=CMP001',
            pa_user_workflow_created_by_maker_cancelled_url:environment_base_url+'/colleague/create/pa-user/workflow/3063077318/?loginId=CMP001',
            pa_user_workflow_created_by_maker_rejected_url:environment_base_url+'/colleague/create/pa-user/workflow/4063077318/?loginId=CMP001',

            pa_user_workflow_created_by_approver_approved_url:environment_base_url+'/colleague/create/pa-user/workflow/6063077318/?loginId=CMP002',
            pa_user_workflow_created_by_approver_cancelled_url:environment_base_url+'/colleague/create/pa-user/workflow/7063077318/?loginId=CMP002',
            pa_user_workflow_created_by_approver_rejected_url:environment_base_url+'/colleague/create/pa-user/workflow/1106307731/?loginId=CMP002',

            //own pending
            pa_user_own_pending_workflow_created_by_approver_login_approver_url:environment_base_url+'/colleague/create/pa-user/workflow/1006307731/?loginId=CMP002',
            pa_user_own_pending_workflow_created_by_maker_login_maker_url:environment_base_url+'/colleague/create/pa-user/workflow/9063077318/?loginId=CMP001',
            //pending
            pa_user_pending_workflow_created_by_maker_login_approver_url:environment_base_url+'/colleague/create/pa-user/workflow/8063077318/?loginId=CMP002',
            pa_user_pending_workflow_created_by_approver_login_maker_url:environment_base_url+'/colleague/create/pa-user/workflow/5063077318/?loginId=CMP001',

        }

    },

};

