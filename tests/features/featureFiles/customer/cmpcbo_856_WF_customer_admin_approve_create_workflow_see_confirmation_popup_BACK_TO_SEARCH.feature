@cmpcbo-856 @customer @workflow @regression @sprint19
Feature: CMPCBO-856 - CMP Customer Administrator to see a confirmation popup on clicking approve button BACK TO SEARCH

  Background:
    And I SET the Cookie Name: "clientId" and Value: "6234567892"
    And I SET the Cookie Name: "correlationId" and Value: "1234569mockCorrelationIDD"

  @cmpcbo856-01
  Scenario Outline: CMP Customer Administrator to see a confirmation popup on BACK TO SEARCH  button.
    Given I navigate to the "customer_created_by_maker_log_as_approver" page
    And I SET the LocalStorage referringUrl to url: "create_user_mock_workflow_landing_page"
    Then I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"
    Then  I click on "workflow_approved_button"
    And I should see a "workflow_popup_heading" as "<approve_user_popup_header1>"
    And I click on "workflow_popup_yes_approve_button"
    And I should see a "workflow_second_popup_header" as "<approve_user_popup_header2>"
    And I click on "workflow_popup_back_to_search_button"
    Then I should see the "edit_workflow_search_page_heading" as "Workflow Search Page"
    Examples:
      | approve_user_popup_header1 | approve_user_popup_header2 |
      | Approve user?              | User approved              |





