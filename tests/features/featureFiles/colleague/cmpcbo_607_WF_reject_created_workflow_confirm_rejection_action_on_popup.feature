@cmpcbo-607 @client @workflow @createClientMVP @regression @sprint14
Feature: CMPCBO-607 - Approver colleague successfully rejected workflow and confirmed the rejection
  Approver Colleague with pending status navigate to the confirmed page and rejected the workflow and the
  confirmation message is displayed on popup modal window.

  @cmpcbo607-01
  Scenario Outline: An Approver Colleague carried out a search workflow with pending status and clicked
  the reject button, with the reject confirmation message displayed, the Yes, reject the workflow button was selected
  and successful status change message was displayed on the modal window.
    Given I navigate to the "colleague_pending_approver_MVP" page
    And  I click on "workflow_reject_button"
    When I click on "workflow_yes_reject_button"
    Then I should see "reject_confirmation_header" displayed as "<reject_confirmation_header>"
    And I should see "reject_confirmation_message" displayed as "<reject_confirmation_message>"

    Examples:

      | reject_confirmation_header | reject_confirmation_message                         |
      | Reject workflow            | Workflow 8063077318 has been successfully rejected. |











