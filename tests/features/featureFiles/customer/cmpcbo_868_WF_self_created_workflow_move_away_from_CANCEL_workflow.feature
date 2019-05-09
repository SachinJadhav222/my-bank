@cmpcbo-868 @customer @workflow @regression @sprint19
Feature: CMPCBO-868 - Client primary administrator to move away from "Cancellation" action

  @cmpcbo868-01
  Scenario Outline: Cancel:Redirecting CMP Customer Admin through "Return Home" after successful button action
    Given I navigate to the "customer_created_by_maker_log_as_maker" page
    Then I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"
    And  I click on "workflow_cancel_button"
    And I should see a "workflow_popup_heading" as "<cancel_popup_header1>"
    And I click on "workflow_popup_back_button"
    And I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"

    Examples:
      | cancel_popup_header1 |
    #  | Cancel workflow      |
      | Cancel user?     |











