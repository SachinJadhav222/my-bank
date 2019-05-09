@cmpcbo-853 @customer @workflow @regression @sprint19
Feature: CMPCBO-853 - CMP Customer Administrator to see a confirmation popup move away using BACK button

  @cmpcbo853-01
  Scenario Outline: CMP Customer Administrator to see a confirmation popup move away using BACK  button.
    Given I navigate to the "customer_created_by_maker_log_as_approver" page
    Then I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"
    Then  I click on "workflow_approved_button"
    And I should see a "workflow_popup_heading" as "<approve_user_popup_header>"
    And I click on "ucc_back_button"
    Then I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"

    Examples:
      | approve_user_popup_header |
      | Approve user?             |





