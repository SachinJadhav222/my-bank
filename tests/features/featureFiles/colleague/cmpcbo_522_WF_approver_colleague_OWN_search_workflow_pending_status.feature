@cmpcbo-522 @client @workflow @createClientMVP @regression @sprint12
Feature: CMPCBO-522 - Approver Colleague OWN search workflow in pending status
  Colleague Approver navigate to Workflow items search page, from the client search page and see
  the status of the search workflow as pending on check and confirm page.

  @cmpcbo522-01
  Scenario Outline: An Approver Colleague carried out a search workflow with pending status and confirmed the pending
  status on check and confirm page with the displayed workflow id, only the back to search button is visible.
    Given I navigate to the "pending_approver_Own_Workflow" page
    When  I could see "create_client_page_heading" as "<create_client_heading>"
    And I should see "workflow_id_floating_band" displayed as "<workflow_id>"
    Then I should see "status_floating_band" displayed as "<status>"
    And I could see "back_to_search_button"
    And I could see "workflow_cancel_button"
    And the "workflow_approved_button" is not visible
    And the "workflow_reject_button" is not visible

    Examples:
      | create_client_heading | status  | workflow_id |
      | Create a new client   | Pending | 1006307731  |









