@cmpcbo-384 @client @workflow @createClientMVP @regression @sprint11
Feature: CMPCBO-384 - Maker Colleague search workflow in cancelled status
  Maker Colleague navigate to Workflow items search page, from the client search page and see
  the status of the search workflow as cancelled on check and confirm page.

  @cmpcbo384-01
  Scenario Outline: A Maker Colleague carried out a search workflow with cancelled status and confirmed the cancelled
  status on check and confirm page with the displayed workflow id, only the back to search button is visible.
    Given I navigate to the "cancelled_maker" page
    When  I could see "create_client_page_heading" as "<create_client_heading>"
    And I could see "back_to_search_button"
    Then I should see "status_floating_band" displayed as "<status>"
    And I should see "workflow_id_floating_band" displayed as "<workflow_id>"
    And the "workflow_approved_button" is not visible
    And the "workflow_reject_button" is not visible
    And the "workflow_cancel_button" is not visible
    And the "workflow_amend_button" is not visible

    Examples:
      | create_client_heading | status    | workflow_id |
      | Create a new client   | Cancelled | 3063077318  |









