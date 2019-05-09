@cmpcbo-516 @client @workflow @createClientMVP @regression @sprint12
Feature: CMPCBO-516 - Maker Colleague OWN search workflow in pending status
  Maker Colleague navigate to Workflow items search page, from the client search page and see
  the status of the search workflow as pending on check and confirm page.

  @cmpcbo516-01
  Scenario Outline: A Maker Colleague carried out a search workflow with pending status and confirmed the pending
  status on check and confirm page with the displayed workflow id, only the back to search button is visible.
    Given I navigate to the "pending_maker_own_workflow" page
    When  I could see "create_client_page_heading" as "<create_client_heading>"
    Then I should see "workflow_id_floating_band" displayed as "<workflow_id>"
    And I should see "status_floating_band" displayed as "<status>"
    And I could see "back_to_search_button"
    And I could see "workflow_cancel_button"
    And the "workflow_approved_button" is not visible
    And the "workflow_reject_button" is not visible

    Examples:
      | create_client_heading | status  | workflow_id |
      | Create a new client   | Pending | 9063077318  |









