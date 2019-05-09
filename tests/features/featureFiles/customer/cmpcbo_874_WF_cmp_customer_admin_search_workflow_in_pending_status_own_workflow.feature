@cmpcbo-874 @customer @workflow @regression @sprint17
Feature: CMPCBO-874 - Customer Admin search workflow in Pending status with or without own workflow
  A CMP Customer Admin has performed workflow ID search on own or created by other Admin.
  The behaviour of the control buttons base on the status of the workflow as approved, rejected or cancelled
  are displayed on the check and confirm page.

  @cmpcbo874-01
  Scenario: A CMP Customer with an Approver privilege created a workflow logged as an Approver and navigate to the check and confirm page
    Given I navigate to the "customer_approver_own_workflow_pending" page
    When I could see "back_to_search_button"
    And I could see "workflow_cancel_button"
    #And I could see "workflow_edit_user_details"
    Then the "workflow_approved_button" is not visible
    And the "workflow_reject_button" is not visible

  @cmpcbo874-02
  Scenario: A CMP Customer with a Maker privilege created a workflow, logged in as a Maker and navigate to the check and confirm page
    Given I navigate to the "customer_maker_own_workflow_pending" page
    When I could see "back_to_search_button"
    And I could see "workflow_cancel_button"
    #And I could see "workflow_edit_user_details"
    Then the "workflow_approved_button" is not visible
    And the "workflow_reject_button" is not visible

  @cmpcbo874-03
  Scenario: A CMP Customer with an Approver privilege created a workflow, logged in as a Maker and navigate to the check and confirm page
    Given I navigate to the "customer_maker_non_own_workflow_pending" page
    When I could see "back_to_search_button"
    Then the "workflow_reject_button" is not visible
    And the "workflow_approved_button" is not visible
    #And I could see "workflow_edit_user_details"
    And the "workflow_cancel_button" is not visible

  @cmpcbo874-04
  Scenario: A CMP Customer with a Maker privilege created a workflow, logged in as an Approver and navigate to the check and confirm page
    Given I navigate to the "customer_approver_non_own_workflow_pending" page
    When I could see "back_to_search_button"
    #And I could see "workflow_edit_user_details"
    Then I should see "workflow_approved_button" existed
    And I should see "workflow_reject_button" existed
    And the "workflow_cancel_button" is not visible



