@cmpcbo-612 @client @workflow @createClientMVP @regression @sprint13
Feature: CMPCBO-612 - Approver Create Workflow Confirm Approval Action on Popup

  @cmpcbo612-01
  Scenario Outline: An Approver Colleague confirms Approval action on pop-up
    Given I navigate to the "colleague_pending_approver_MVP" page
    And I should see Page Heading "Check & confirm" at "ucc_check_and_confirm_page_heading"
    And I should see "workflow_id_floating_band" displayed as "<workflow_id>"
    And I should see "status_floating_band" displayed as "<status>"
    And I could see "back_to_search_button"
    And I could see "workflow_reject_button"
    And I could see "workflow_approved_button"
    And I click on "workflow_approved_button"
    And I should see a "workflow_popup_heading" as "Approve workflow"
    And I should see a "workflow_first_popup_message" as "<first-popup-message>"
    When I click on "workflow_popup_yes_approve_button"
    Then I should see a "workflow_popup_heading" as "Workflow Approved"
    And I should see a "workflow_second_popup_message" as "<second-popup-message>"

    Examples:
      | status  | workflow_id | first-popup-message                                    | second-popup-message                                                                                  |
      | Pending | 8063077318  | Are you sure you want to approve workflow 8063077318 ? | Workflow ID (8063077318) has been successfully approved.\nThe client ID for the client is 1234567890. |









