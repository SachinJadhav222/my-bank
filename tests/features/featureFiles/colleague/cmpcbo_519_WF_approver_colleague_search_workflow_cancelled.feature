@cmpcbo-519 @client @workflow @createClientMVP @regression @sprint11
Feature: CMPCBO-519 - Approver Colleague search workflow in cancelled status
  Maker Colleague navigate to Workflow items search page, from the client search page and see
  the status of the search workflow as cancelled on check and confirm page.

  @cmpcbo519-01
  Scenario Outline: An Approver Colleague carried out a search workflow with cancelled status and confirmed the cancelled
  status on check and confirm page with the displayed workflow id, only the back to search button is visible.
    Given I navigate to the "cancelled_approver" page
    When  I could see "create_client_page_heading" as "<create_client_heading>"
    And I could see "back_to_search_button"
    Then I should see "workflow_id_floating_band" displayed as "<workflow_id>"
    And I should see "status_floating_band" displayed as "<status>"
    And the "workflow_approved_button" is not visible
    And the "workflow_reject_button" is not visible
    And the "workflow_cancel_button" is not visible
    And the "workflow_amend_button" is not visible

    Examples:
      | create_client_heading | status  | workflow_id |
      | Create a new client   | Cancelled | 7063077318     |









