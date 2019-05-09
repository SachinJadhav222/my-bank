@cmpcbo-848 @customer @workflow @regression @sprint17
Feature: CMPCBO-848 - customer admin search workflow in approved or rejected or cancelled status
  Customer admin navigate to Workflow items search page, from the client search page and see
  the status of the search workflow as approved, rejected or cancelled on the check and confirm page.

  @cmpcbo848-01
  Scenario: A CMP Customer with a Maker privilege created a workflow with an 'Approved' status and
                    navigate to the check and confirm page
    Given I navigate to the "customer_maker_approved" page
    When I could see "back_to_search_button"
    Then the "workflow_approved_button" is not visible
    And the "workflow_reject_button" is not visible
    And the "workflow_cancel_button" is not visible
    And the "workflow_amend_button" is not visible

  @cmpcbo848-02
  Scenario: A CMP Customer with a Maker privilege created a workflow with an 'Cancelled' status and
            navigate to the check and confirm page
    Given I navigate to the "customer_maker_cancelled" page
    When I could see "back_to_search_button"
    Then the "workflow_approved_button" is not visible
    And the "workflow_reject_button" is not visible
    And the "workflow_cancel_button" is not visible
    And the "workflow_amend_button" is not visible

  @cmpcbo848-03
  Scenario: A CMP Customer with a Maker privilege created a workflow with an 'Rejected' status and
            navigate to the check and confirm page
    Given I navigate to the "customer_maker_rejected" page
    When I could see "back_to_search_button"
    Then the "workflow_approved_button" is not visible
    And the "workflow_reject_button" is not visible
    And the "workflow_cancel_button" is not visible
    And the "workflow_amend_button" is not visible

  @cmpcbo848-04
  Scenario: A CMP Customer with a Approver privilege created a workflow with an 'Approved' status and
  navigate to the check and confirm page
    Given I navigate to the "customer_approver_approved" page
    When I could see "back_to_search_button"
    Then the "workflow_approved_button" is not visible
    And the "workflow_reject_button" is not visible
    And the "workflow_cancel_button" is not visible
    And the "workflow_amend_button" is not visible

  @cmpcbo848-05
  Scenario: A CMP Customer with a Approver privilege created a workflow with an 'Cancelled' status and
  navigate to the check and confirm page
    Given I navigate to the "customer_approver_cancelled" page
    When I could see "back_to_search_button"
    Then the "workflow_approved_button" is not visible
    And the "workflow_reject_button" is not visible
    And the "workflow_cancel_button" is not visible
    And the "workflow_amend_button" is not visible

  @cmpcbo848-06
  Scenario: A CMP Customer with a Approver privilege created a workflow with an 'Rejected' status and
  navigate to the check and confirm page
    Given I navigate to the "customer_approver_rejected" page
    When I could see "back_to_search_button"
    Then the "workflow_approved_button" is not visible
    And the "workflow_reject_button" is not visible
    And the "workflow_cancel_button" is not visible
    And the "workflow_amend_button" is not visible










