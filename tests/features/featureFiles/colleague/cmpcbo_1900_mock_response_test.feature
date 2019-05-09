@cmpcbo-1900 @client @colleagueCreatePAUser @regression
Feature: CMPCBO-1900- Mock test

  Background:
    #And I SET the Cookie Name: "clientId" and Value: "3234567891"
    #And I SET the Cookie Name: "correlationId" and Value: "1234567mockCorrelationID"
    #Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    And I SET the Cookie Name: "clientId" and Value: "6234567892"
    And I SET the Cookie Name: "correlationId" and Value: "123456mockCorrelationID1"
    Given I navigate to URL "http://cmp-cwa-coll.cmp.sbx.zone/client/create-user/workflow/4000000004/?userId=3234567891"


  @cmpcbo1900-01
  Scenario: Mock Response Workflow confirmation pop-up.
    #And I should see Page Heading "User details" at "user_details_page_heading"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I click on button "button#workflowCancelledButton"
    And I NOCK the endpoint to Get Mock response "http://cmp-wlp.cmp.sbx.zone/cmp/api/service/v1/client/workflow";
    And I click on button "button#yesCancelWorkflowButton" to get Error
    #And I create mock response
