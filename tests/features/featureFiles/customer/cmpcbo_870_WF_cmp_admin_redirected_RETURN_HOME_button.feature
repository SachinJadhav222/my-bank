@cmpcbo-870 @customer @workflow @regression @sprint19
Feature: CMPCBO-870 - Redirecting CMP Customer Admin through "Return Home" after successful or Unsuccessful button action

  @cmpcbo870-01
  Scenario Outline: Redirecting CMP Customer Admin through "Return Home" after successful button action
    Given I navigate to the "customer_created_by_maker_log_as_maker" page
    Then I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"
    And  I click on "workflow_cancel_button"
    And I should see a "workflow_popup_heading" as "<cancel_popup_header1>"
    And I click on "workflow_popup_yes_cancel_button"
    And I should see a "workflow_second_popup_header" as "<cancel_popup_header2>"
    And I click on "workflow_popup_return_home_button"
    And I should see Page Heading "Mock Landing Page" at "mock_landing_page"

    Examples:
      | cancel_popup_header1 | cancel_popup_header2 |
      | Cancel user?         | Workflow cancelled   |












