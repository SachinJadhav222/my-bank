@cmpcbo-613 @client @workflow @createClientMVP @regression @sprint13
Feature: CMPCBO-613 - Approver Create Workflow Move away from approval action using BACK Button

  @cmpcbo613-01
  Scenario Outline: Approver Colleague check and confirm confirmation pop-up displayed
    Given I navigate to the "colleague_pending_approver_MVP" page
    When I should see "Create a new client" as "create_client_page_heading"
    And I should see "status_floating_band" displayed as "<status>"
    And I should see "workflow_id_floating_band" displayed as "<workflow_id>"
    And I click on "workflow_approved_button"
    And I should see a "workflow_first_popup_header" as "<first-popup-header>"
    And I should see a "workflow_first_popup_message" as "<first-popup-message>"
    And I click on "workflow_popup_back_button"
    Then I should see "Create a new client" as "create_client_page_heading"


    Examples:
      | status  | workflow_id | first-popup-header | first-popup-message                                    |
      | Pending | 8063077318  | Approve workflow   | Are you sure you want to approve workflow 8063077318 ? |









