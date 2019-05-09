@cmpcbo-876 @customer @workflow @regression @sprint19
Feature: CMPCBO-876 - CMP Customer admin view non own created workflow in pending status
  CMP Customer Admin navigated to the check and confirm page and viewed non own created workflow pending status

  @cmpcbo876-01
  Scenario: CMP Customer Admin with Approver access login and viewed non own created workflow pending status on check and confirm page
    Given I navigate to the "customer_approver_non_own_workflow_pending" page
    When I could see "ucc_check_and_confirm_page_heading" as "Check and confirm"
    Then I should see "back_to_search_button" is visible & displayed
    And I should see "workflow_reject_button" is visible & displayed
    And I should see "workflow_approved_button" is visible & displayed
    And the "workflow_cancel_button" is not visible
