@cmpcbo-610 @client @workflow @createClientMVP @regression @sprint14
Feature: CMPCBO-610 - Approver successfully rejected workflow and returned to colleague landing page
  Approver Colleague with pending status navigate to the confirmed page and rejected workflow and then
  selected the Return Home button to return to colleague landing page.

  @cmpcbo610-01
  Scenario Outline: An Approver Colleague successfully rejected workflow and clicked
  the return home button to return to the colleague landing page.
    Given I navigate to the "colleague_pending_approver_MVP" page
    And  I click on "workflow_reject_button"
    And I click on "workflow_yes_reject_button"
    When I click on "workflow_popup_return_home_button"
    Then I should see the landing page "<colleague_portal_home_page>" as "mock_landing_page"

    Examples:

      | colleague_portal_home_page |
      | Mock Landing Page          |




