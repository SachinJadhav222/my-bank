@cmpcbo-611 @client @workflow @createClientMVP @regression @sprint14
Feature: CMPCBO-611 - Approver successfully rejected workflow and returned to workflow search page
  Approver Colleague with pending status navigate to the confirmed page and rejected workflow and then
  selected the Back to search button to return to the workflow search page.

  @cmpcbo611-01
  Scenario Outline: An Approver Colleague successfully rejected workflow and clicked
  the back to search button button to return to the workflow search page.
    Given I navigate to the "colleague_pending_approver_MVP" page
    And  I click on "workflow_reject_button"
    And I click on "workflow_yes_reject_button"
    When I click on "workflow_popup_back_to_search_button"
    Then I should see the landing page "<work_flow_search_page_title>" as "workflow_search_page_heading"

    Examples:

      | work_flow_search_page_title |
      | Workflow Search Page        |




