@cmpcbo-615 @client @workflow @createClientMVP @regression @sprint13
Feature: CMPCBO-615 - Approver Create Workflow Redirecting Colleague to Landing Page he clicks RETURN HOME

  @cmpcbo615-01
  Scenario Outline: Redirecting Colleague to Landing Page after when he clicks
  RETURN HOME on successful creation of workflow
    Given I navigate to the "colleague_pending_approver_MVP" page
    Then I should see "Create a new client" as "create_client_page_heading"
    And I should see "status_floating_band" displayed as "Pending"
    And I should see "workflow_id_floating_band" displayed as "8063077318"
    And I click on "workflow_approved_button"
    And I should see a "workflow_first_popup_header" as "Approve workflow"
    And I should see a "workflow_first_popup_message" as "<first-popup-message>"
    And I click on "workflow_popup_yes_approve_button"
    And I should see a "workflow_second_popup_header" as "Workflow Approved"
    And I should see a "workflow_second_popup_message" as "<second-popup-message>"
    And I click on "workflow_popup_return_home_button"
    And I should see Page Heading "Mock Landing Page" at "mock_landing_page"

    Examples:
      | first-popup-message                                    | second-popup-message                                                                                  |
      | Are you sure you want to approve workflow 8063077318 ? | Workflow ID (8063077318) has been successfully approved.\nThe client ID for the client is 1234567890. |




