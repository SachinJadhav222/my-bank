@cmpcbo-866 @customer @workflow @regression @sprint19
Feature: CMPCBO-866 - Customer attempt to cancel self created workflow and see confirmation popup window
  Both Client primary administrator and non admin user are able to cancel workflow, which is self created.
  A Client primary admin/user cannot cancel a workflow created by another primary admin/user

  @cmpcbo866-01
  Scenario Outline: A CMP Customer with an Approver privilege attempt to cancel self created workflow and see confirmation
  popup window
    Given I navigate to the "customer_approver_own_workflow_pending" page
    When I could see "workflow_cancel_button"
    And I click on "workflow_cancel_button"
    Then I should see "cancelled_confirmation_header1" displayed as "<cancelled_confirmation_header>"
    Then I should see "cancelled_confirmation_text_msg" displayed as "<cancelled_confirmation_text_message>"

    Examples:
      | cancelled_confirmation_header | cancelled_confirmation_text_message                   |
     # | Cancel workflow?               | Are you sure you want to cancel workflow 4000000004 ? |
      | Cancel user?                  | Are you sure you want to cancel workflow 4000000004 ? |

  @cmpcbo866-02
  Scenario Outline: A CMP Customer with a Maker privilege attempt to cancel self created workflow and see confirmation
  popup window
    Given I navigate to the "customer_maker_own_workflow_pending" page
    When I could see "workflow_cancel_button"
    And I click on "workflow_cancel_button"
    Then I should see "cancelled_confirmation_header1" displayed as "<cancelled_confirmation_header>"
    Then I should see "cancelled_confirmation_text_msg" displayed as "<cancelled_confirmation_text_message>"

    Examples:
      | cancelled_confirmation_header | cancelled_confirmation_text_message                   |
      #| Cancel workflow?                  | Are you sure you want to cancel workflow 4000000007 ? |
      | Cancel user?                  | Are you sure you want to cancel workflow 4000000007 ? |











