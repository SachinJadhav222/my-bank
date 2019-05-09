@cmpcbo-860 @customer @workflow @regression @sprint19
Feature: CMPCBO-860 - Reject created workflow and move away from Reject action
  CMP Client admin is able to move away from the reject action at the pop-up, if needed.

  @cmpcbo860-01
  Scenario Outline: CMP Customer admin to move away from "Reject" action.
    Given I navigate to the "customer_approver_non_own_workflow_pending" page
    When  I click on "workflow_reject_button"
    And I could see "workflow_popup_heading" as "<reject_user_popup_header>"
    And I click on "workflow_popup_back_button"
    Then I should see the "ucc_check_and_confirm_page_heading" as "<check_and_confirm_header>"

    Examples:
      | reject_user_popup_header | check_and_confirm_header |
      | Reject workflow?         | Check and confirm          |





