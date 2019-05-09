@cmpcbo-863 @customer @workflow @regression @sprint19
Feature: CMPCBO-863 - CMP Customer admin redirected through the Back to search button after successful reject action
  CMP Customer Admin are redirected post successful reject workflow to the workflow search page
  Background:
    And I SET the Cookie Name: "clientId" and Value: "6234567892"
    And I SET the Cookie Name: "correlationId" and Value: "123456mockCorrelationID3"

  @cmpcbo863-01
  Scenario Outline: CMP Customer Administrator to see be redirected to the workflow search page through the "Back to search" button after
  successful reject action
    Given I navigate to the "customer_approver_non_own_workflow_pending" page
    And I SET the LocalStorage referringUrl to url: "create_user_mock_workflow_landing_page"
    When  I click on "workflow_reject_button"
    And I could see "workflow_popup_heading" as "<reject_user_popup_header>"
    And I click on "workflow_popup_yes_reject_button"
    And I click on "workflow_popup_back_to_search_button"
    And I should see the "edit_workflow_search_page_heading" as "Workflow Search Page"
    Examples:
      | reject_user_popup_header |
      | Reject workflow?         |





