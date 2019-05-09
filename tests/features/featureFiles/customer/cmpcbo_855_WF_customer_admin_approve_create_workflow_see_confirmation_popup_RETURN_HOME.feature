@cmpcbo-855 @customer @workflow @regression @sprint19
Feature: CMPCBO-855 - CMP Customer Administrator to see a confirmation popup on clicking approve button RETURN HOME

  @cmpcbo855-01
  Scenario Outline: CMP Customer Administrator to see a confirmation popup on RETURN HOME button.
    Given I navigate to the "customer_created_by_maker_log_as_approver" page
    Then I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"
    Then  I click on "workflow_approved_button"
    And I should see a "workflow_popup_heading" as "<approve_user_popup_header1>"
    And I click on "workflow_popup_yes_approve_button"
    And I should see a "workflow_second_popup_header" as "<approve_user_popup_header2>"
    And I click on "workflow_popup_return_home_button"
    Then I should see Page Heading "Mock Landing Page" at "mock_landing_page"

    Examples:
      | approve_user_popup_header1 | approve_user_popup_header2 |
      | Approve user?              | User approved              |





