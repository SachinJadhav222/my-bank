@cmpcbo-599 @client @workflow @createClientMVP @regression @sprint14
Feature: CMPCBO-599 - Maker or Approver successfully cancelled workflow and confirmed the cancellation
  Maker or Approver Colleague with pending status navigate to the confirmed page and cancelled workflow and the
  confirmation message is displayed on popup modal window.

  @cmpcbo599-01
  Scenario Outline: A Maker Colleague successfully cancelled workflow and clicked
  the back to search button to return to the workflow search page.
    Given I navigate to the "pending_maker_own_workflow" page
    When  I click on "workflow_cancel_button"
    And I click on "yes_cancel_workflow_button"
    Then I should see "cancelled_confirmation_header" displayed as "<confirmation_header>"
    And I should see "cancelled_confirmation_message" displayed as "<confirmation_message>"

    Examples:

      | confirmation_header |confirmation_message|
      | Workflow cancelled        |Workflow 9063077318 has been successfully cancelled.|

  @cmpcbo599-02
  Scenario Outline: An Approver Colleague successfully cancelled workflow and clicked
  the back to search button to return to the workflow search page.

    Given I navigate to the "pending_approver_Own_Workflow" page
    And I navigate to the "pending_approver_Own_Workflow" page
    When  I click on "workflow_cancel_button"
    And I click on "yes_cancel_workflow_button"
    Then I should see "cancelled_confirmation_header" displayed as "<confirmation_header>"
    And I should see "cancelled_confirmation_message" displayed as "<confirmation_message>"

    Examples:

      | confirmation_header |confirmation_message|
      | Workflow cancelled        |Workflow 1006307731 has been successfully cancelled.|

 @cmpcbo599-03
  Scenario Outline: Unsuccessful path

    Given I navigate to the "pending_approver_Own_Workflow" page
    And I navigate to the "pending_approver_Own_Workflow" page
   And I create mock response
    When  I click on "workflow_cancel_button"
    And I click on "yes_cancel_workflow_button"
    Then I should see "cancelled_confirmation_header" displayed as "<confirmation_header>"
    And I should see "cancelled_confirmation_message" displayed as "<confirmation_message>"

    Examples:

      | confirmation_header |confirmation_message|
      | Workflow cancelled        |Workflow 1006307731 has been successfully cancelled.|





