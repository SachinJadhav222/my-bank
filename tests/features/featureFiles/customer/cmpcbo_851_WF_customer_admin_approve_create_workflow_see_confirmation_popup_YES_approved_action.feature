@cmpcbo-851 @customer @regression @sprint19
Feature: CMPCBO-851 - CMP Customer Administrator to see a confirmation popup on clicking approve button YES APPROVE BUTTON

  @cmpcbo851-01
  Scenario Outline: CMP Customer Administrator to see a confirmation popup on clicking approve button on check and confirm page.
    Given I navigate to the "customer_created_by_maker_log_as_approver" page
    Then I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"
    Then  I click on "workflow_approved_button"
    And I should see a "workflow_popup_heading" as "<approve_user_popup_header1>"
    And I click on "workflow_popup_yes_approve_button"
    And I should see a "workflow_second_popup_header" as "<approve_user_popup_header2>"

    Examples:
      | approve_user_popup_header1 | approve_user_popup_header2 |
      | Approve user?              | User approved              |





