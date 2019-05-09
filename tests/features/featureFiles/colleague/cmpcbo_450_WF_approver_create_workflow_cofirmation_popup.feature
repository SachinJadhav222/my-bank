@cmpcbo-450 @client @workflow @createClientMVP @regression @sprint13
Feature: CMPCBO-450 - Approver Create Workflow Confirmation Pop up is displayed

  @cmpcbo450-01
  Scenario Outline: Approver Colleague with the pending status navigate to the
  check and confirm page and see the confirmation menu details.
    Given I navigate to the "colleague_pending_approver_MVP" page
    When  I could see "create_client_page_heading" as "<create_client_heading>"
    Then I should see "status_floating_band" displayed as "<status>"
    And I should see "workflow_id_floating_band" displayed as "<workflow_id>"
    And I click on "workflow_approved_button"
    And I should see a "workflow_popup_heading" as "Approve workflow"
    And I should see a "workflow_first_popup_message1" as "<first-popup-message>"
    And I could see "workflow_first_popup_message1"
    And I could see "workflow_popup_yes_approve_button"

    Examples:
      | create_client_heading | status  | workflow_id | first-popup-message                                    |
      | Create a new client   | Pending | 8063077318  | Are you sure you want to approve workflow 8063077318 ? |









