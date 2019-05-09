@cmpcbo-850 @customer @workflow @regression @sprint18
Feature: CMPCBO-850 - CMP Customer Administrator to see a confirmation popup on clicking approve button
  CMP Customer admin searched for an existing workflow created by other Admin, on clicking the approve button on check and confirm page,
  a confirmation pop-up screen is displayed which allows CMP Customer admin to finalise the approval
  and changes the status of workflow from Pending to Approved.

  @cmpcbo850-01
  Scenario Outline: CMP Customer Administrator to see a confirmation popup on clicking approve button on check and confirm page.
    Given I navigate to the "customer_created_by_maker_log_as_approver" page
    Then I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"
    Then  I click on "workflow_approved_button"
    And I should see a "workflow_popup_heading" as "<approve_user_popup_header>"

    Examples:
      | approve_user_popup_header |
      | Approve user?             |





