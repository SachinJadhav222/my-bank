@cmpcbo-859 @customer @workflow @regression @sprint19
Feature: CMPCBO-859 - CMP Customer admin to confirm Reject action on pop-up window
  CMP Customer admin can reject workflow which is created by other CMP Customer admin

  @cmpcbo859-01
  Scenario Outline: CMP Customer Administrator to see a confirmation popup on clicking the reject button on check and confirm page.
    Given I navigate to the "customer_approver_non_own_workflow_pending" page
    When  I click on "workflow_reject_button"
    And I could see "workflow_popup_heading" as "<reject_user_popup_header>"
    And I click on "workflow_popup_yes_reject_button"
    Then I should see the "workflow_second_popup_header" as "<workflow_reject_header>"
    And I should see the "reject_confirmation_message" as "<workflow_reject_body>"

    Examples:
      | reject_user_popup_header | workflow_reject_header | workflow_reject_body                                |
      | Reject workflow?         | Workflow rejected      | Workflow 4000000008 has been successfully rejected. |








