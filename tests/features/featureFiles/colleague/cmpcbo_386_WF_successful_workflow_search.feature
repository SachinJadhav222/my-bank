@cmpcbo-386 @client @workflow @createClientMVP @regression @sprint10
Feature: CMPCBO-386 - Successful Workflow search result from Create Client Workflow
  After a successful search, colleague (Maker or Approval) will be redirected to the
  Check and confirm page of create client journey. The page will show the status and workflow ID on top for colleagues reference

  @cmpcbo386-01
  Scenario Outline: Colleague performed workflow search for a valid CMP Create Client workflow ID
  and the "Workflow ID" and "Status" are displayed in a floating band on top of the screen.
    Given I navigate to the "colleague_pending_approver_MVP" page
    When  I could see "create_client_page_heading" as "<create_client_heading>"
    And I should see "workflow_id_floating_band" displayed as "<workflow_id>"
    Then I should see "status_floating_band" displayed as "<status>"
    And I should see "workflow_id_floating_band" displayed as "<workflow_id>"

    Examples:
      | workflow_id | status  | create_client_heading |
      | 8063077318  | Pending | Create a new client   |

  @cmpcbo386-02
  Scenario Outline: Colleague performed workflow search for a valid CMP Create Client workflow ID
  and landed on the "Check and confirm" page, the back to search button is displayed and when clicked colleague is returned
  to the work flow id search page.
    Given I navigate to the "colleague_pending_approver_MVP" page
    Then I could see "create_client_page_heading" as "<create_client_heading>"
    And I could see "back_to_search_button"
    When I click on "back_to_search_button"
    Then I should be taken back to "colleague_workflow_landing_page" displayed as "<workflow_title>"

    Examples:
      | workflow_title       | create_client_heading |
      | Workflow Search Page | Create a new client   |






