@cmpcbo-606 @client @workflow @createClientMVP @regression @sprint14
Feature: CMPCBO-606 - Maker or Approver successfully cancelled workflow and returned to workflow search page
  Maker or Approver Colleague with pending status navigate to the confirmed page and cancelled workflow and then
  selected the Back to search button to return to the workflow search page.

  @cmpcbo606-01
  Scenario Outline: A Maker Colleague successfully cancelled workflow and clicked
  the back to search button button to return to the workflow search page.
    Given I navigate to the "pending_maker_own_workflow" page
    And  I click on "workflow_cancel_button"
    And I click on "yes_cancel_workflow_button"
    When I click on "workflow_popup_back_to_search_button"
    Then I should see the landing page "<work_flow_search_page_title>" as "colleague_workflow_landing_page"

    Examples:

      | work_flow_search_page_title |
      | Workflow Search Page        |

  @cmpcbo606-02
  Scenario Outline: An Approver Colleague successfully cancelled workflow and clicked
  the back to search button button to return to the workflow search page.

    Given I navigate to the "pending_approver_Own_Workflow" page
    And  I click on "workflow_cancel_button"
    And I click on "yes_cancel_workflow_button"
    And I click on "workflow_popup_back_to_search_button"
    Then I should see the landing page "<work_flow_search_page_title>" as "colleague_workflow_landing_page"

    Examples:

      | work_flow_search_page_title |
      | Workflow Search Page        |





