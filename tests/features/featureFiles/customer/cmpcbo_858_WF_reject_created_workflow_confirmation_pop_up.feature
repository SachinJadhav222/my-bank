@cmpcbo-858 @customer @workflow @regression @sprint19
Feature: CMPCBO-858 - Reject created workflow - See confirmation pop-up

  @cmpcbo858-01
  Scenario Outline: Reject created workflow - See confirmation pop-up
    Given I navigate to the "customer_created_by_maker_log_as_approver" page
    Then I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"
    And  I click on "workflow_reject_button"
#    And I should see a "workflow_popup_heading" as "<reject_popup_header1>"
#    And I should see a "workflow_reject_popup_message" as "<reject_popup_message1>"
    And I should see a "workflow_model_header" as "<reject_popup_header1>"
    And I should see a "workflow_model_body" as "<reject_popup_message1>"
    Examples:
      | reject_popup_header1 | reject_popup_message1                                 |
      | Reject workflow?          | Are you sure you want to reject workflow 4000000008 ? |











