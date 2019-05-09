@cmpcbo-608 @client @workflow @createClientMVP @regression @sprint14
Feature: CMPCBO-608 - Approver Colleague navigate back to Check and confirm page from reject workflow confirmation popup window
  Approver Colleague search for workflow in pending status, and navigate to the Check and confirm page and subsequently
  clicked the reject button and then select the back button to return back to the Check and confirm page

  @cmpcbo608-01
  Scenario Outline: An Approver Colleague carried out a search workflow with pending status and clicked
  the reject button, with the reject confirmation message displayed, the back button was selected to return back
  to the confirmation page.
    Given I navigate to the "colleague_pending_approver_MVP" page
    And  I click on "workflow_reject_button"
    When I click on "popup_back_button"
    Then I could see "create_client_page_heading" as "<create_client_heading>"


    Examples:
      | create_client_heading |
      | Create a new client   |











