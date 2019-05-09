@cmpcbo-605 @client @workflow @createClientMVP @regression @sprint14
Feature: CMPCBO-605 - Maker or Approver successfully cancelled workflow and returned to colleague landing page
  Maker or Approver Colleague with pending status navigate to the confirmed page and cancelled workflow and then
  selected the Return Home button to return to colleague landing page.

  @cmpcbo605-01
  Scenario Outline: A Maker Colleague successfully cancelled workflow and clicked
  the return home button button to return to the colleague landing page.
    Given I navigate to the "pending_maker_own_workflow" page
    And  I click on "workflow_cancel_button"
    And I click on "yes_cancel_workflow_button"
    When I click on "workflow_popup_return_home_button"
    Then I should see the landing page "<colleague_portal_home_page>" as "mock_landing_page"

    Examples:

      | colleague_portal_home_page |
      | Mock Landing Page          |

  @cmpcbo605-02
  Scenario Outline: An Approver Colleague successfully cancelled workflow and clicked
  the return home button button to return to the colleague landing page.

    Given I navigate to the "pending_approver_Own_Workflow" page
    And  I click on "workflow_cancel_button"
    And I click on "yes_cancel_workflow_button"
    And I click on "workflow_popup_return_home_button"
    Then I should see the landing page "<colleague_portal_home_page>" as "mock_landing_page"

    Examples:

      | colleague_portal_home_page |
      | Mock Landing Page          |





