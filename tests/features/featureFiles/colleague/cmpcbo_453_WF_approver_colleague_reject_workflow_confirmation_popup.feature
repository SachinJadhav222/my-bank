@cmpcbo-453 @client @workflow @createClientMVP @regression @sprint14
Feature: CMPCBO-453 - Approver Colleague reject workflow created by other colleague and see confirmation popup message
  Approver Colleague searched for workflow in pending status navigate to the confirmed page and clicked the reject
  button and see the reject confirmation popup in a modal window.

  @cmpcbo453-01
  Scenario Outline: An Approver Colleague carried out a search workflow with pending status and clicked
  the reject button, the reject confirmation message is displayed on a modal window.
    Given I navigate to the "colleague_pending_approver_MVP" page
    When  I click on "workflow_reject_button"
    Then I could see "approver_reject_confirmation_popup" as "<popup_header>"


    Examples:
      | popup_header                             |
      | Are you sure you want to reject workflow |











