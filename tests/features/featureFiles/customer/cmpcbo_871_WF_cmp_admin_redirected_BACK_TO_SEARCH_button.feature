@cmpcbo-871 @customer @workflow @regression @sprint19
Feature: CMPCBO-871 - Redirecting CMP Customer Admin through "Back to search" after successful/Unsuccessful cancellation action

  Background:
    And I SET the Cookie Name: "clientId" and Value: "6234567892"
    And I SET the Cookie Name: "correlationId" and Value: "1234569mockCorrelationIDD"

  @cmpcbo871-01
  Scenario Outline: Redirecting CMP Customer Admin through "Back to search" after successful/Unsuccessful cancellation action
    Given I navigate to the "customer_created_by_maker_log_as_maker" page
    And I SET the LocalStorage referringUrl to url: "create_user_mock_workflow_landing_page"
    Then I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"
    And  I click on "workflow_cancel_button"
    And I should see a "workflow_popup_heading" as "<cancel_popup_header1>"
    And I click on "workflow_popup_yes_cancel_button"
    And I should see a "workflow_second_popup_header" as "<cancel_popup_header2>"
    And I click on "workflow_popup_back_to_search_button"
    And I should see the "edit_workflow_search_page_heading" as "Workflow Search Page"

    Examples:
      | cancel_popup_header1 | cancel_popup_header2 |
      | Cancel user?         | Workflow cancelled   |












