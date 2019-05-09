@cmpcbo-520 @client @workflow @createClientMVP @regression @sprint13
Feature: CMPCBO-520 - Approver Colleague search workflow in rejected status
  Approver Colleague navigate to Workflow items search page, from the client search page and see
  the status of the search workflow as rejected on check and confirm page.

  @cmpcbo520-01
  Scenario Outline: Approver Colleague carried out a search workflow with rejected status and confirmed the rejected
  status on check and confirm page with the displayed workflow id, only the back to search button is visible.
    Given I navigate to the "rejected_approver" page
    When  I could see "create_client_page_heading" as "<create_client_heading>"
    And I should see "workflow_id_floating_band" displayed as "<workflow_id>"
    Then I should see "status_floating_band" displayed as "<status>"
    And I could see "back_to_search_button"
    And the "workflow_approved_button" is not visible
    And the "workflow_reject_button" is not visible
    And the "workflow_cancel_button" is not visible
    And the "workflow_amend_button" is not visible

    Examples:
      | create_client_heading | status   | workflow_id |
      | Create a new client   | Rejected | 1106307731     |









