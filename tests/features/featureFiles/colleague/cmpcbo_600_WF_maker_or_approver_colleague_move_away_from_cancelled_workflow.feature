@cmpcbo-600 @client @workflow @createClientMVP @regression @sprint14
Feature: CMPCBO-600 - Maker or Approver Cancel self created workflow and move away from Cancellation action
  Maker or Approver Colleague with pending status navigate to the confirmed page and clicked the cancel button and then
  select the back button to return to the Check and confirm page.

  @cmpcbo600-01
  Scenario Outline: A Maker Colleague carried out a search workflow with pending status and clicked
  the cancelled button and then, clicked the back button to return to the Check and confirm page.
    Given I navigate to the "pending_maker_own_workflow" page
    And  I click on "workflow_cancel_button"
    And I click on "popup_back_button"
    Then I could see "create_client_page_heading" as "<create_client_heading>"



    Examples:
      | create_client_heading |
      | Create a new client   |

  @cmpcbo600-02
  Scenario Outline: An Approver Colleague carried out a search workflow with pending status and clicked
  the cancelled button and then, clicked the back button to return to the Check and confirm page.
    Given I navigate to the "pending_approver_Own_Workflow" page
    And  I click on "workflow_cancel_button"
    And I click on "popup_back_button"
    Then I could see "create_client_page_heading" as "<create_client_heading>"



    Examples:
      | create_client_heading |
      | Create a new client   |








