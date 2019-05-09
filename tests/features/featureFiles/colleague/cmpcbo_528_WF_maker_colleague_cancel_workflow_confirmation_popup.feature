@cmpcbo-528 @client @workflow @createClientMVP @regression @sprint14
Feature: CMPCBO-528 - Maker or Approver Colleague cancelled self created workflow and see confirmation popup message
  Maker or Approver Colleague with pending status navigate to the confirmed page and clicked the cancel button and see the
  cancelled confirmation popup.

  @cmpcbo528-01
  Scenario Outline: A Maker Colleague carried out a search workflow with pending status and clicked
  the cancelled button, the cancelled confirmation message is displayed.
    Given I navigate to the "pending_maker_own_workflow" page
    When  I click on "workflow_cancel_button"
    Then I could see "cancel_confirmation_popup" as "<popup_header>"

    Examples:
      | popup_header                             |
      | Are you sure you want to cancel workflow |

  @cmpcbo528-02
  Scenario Outline: An Approver Colleague carried out a search workflow with pending status and clicked
  the cancelled button, the cancelled confirmation message is displayed.
    Given I navigate to the "pending_maker_own_workflow" page
    When  I click on "workflow_cancel_button"
    Then I could see "cancel_confirmation_popup" as "<popup_header>"

    Examples:
      | popup_header                             |
      | Are you sure you want to cancel workflow |









