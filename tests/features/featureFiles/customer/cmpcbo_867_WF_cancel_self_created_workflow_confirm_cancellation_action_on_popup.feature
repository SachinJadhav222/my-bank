@cmpcbo-867 @customer @workflow @regression @sprint19
Feature: CMPCBO-867 - Customer Admin cancel self created workflow and confirm cancellation action on pop-up
  Both Client primary administrator and non admin user are able to cancel workflow, which is self created.
  A Client primary admin/user cannot cancel a workflow created by another primary admin/user

  @cmpcbo867-01
  Scenario Outline: A CMP Customer with an Approver privilege cancelled self created a workflow
    Given I navigate to the "customer_approver_own_workflow_pending" page
    And I click on "workflow_cancel_button"
    When I click on "yes_cancel_workflow_button"
#    Then I should see "cancelled_confirmation_header" displayed as "<cancelled_confirmation_header>"
#    And I should see "cancelled_confirmation_message" displayed as "<cancelled_confirmation_text_msg>"
    Then I should see "workflow_model_header" displayed as "<cancelled_confirmation_header>"
    And I should see "workflow_model_body" displayed as "<cancelled_confirmation_text_msg>"

    Examples:
      | cancelled_confirmation_header | cancelled_confirmation_text_msg                      |
      | Workflow cancelled            | Workflow 4000000004 has been successfully cancelled. |

  @cmpcbo867-02
  Scenario Outline: A CMP Customer with a Maker privilege cancelled self created a workflow
    Given I navigate to the "customer_maker_own_workflow_pending" page
    And I click on "workflow_cancel_button"
    When I click on "yes_cancel_workflow_button"
#    Then I should see "cancelled_confirmation_header" displayed as "<cancelled_confirmation_header>"
#    And I should see "cancelled_confirmation_message" displayed as "<cancelled_confirmation_text_msg>"
    Then I should see "workflow_model_header" displayed as "<cancelled_confirmation_header>"
    And I should see "workflow_model_body" displayed as "<cancelled_confirmation_text_msg>"

    Examples:
      | cancelled_confirmation_header | cancelled_confirmation_text_msg                      |
      | Workflow cancelled            | Workflow 4000000007 has been successfully cancelled. |











