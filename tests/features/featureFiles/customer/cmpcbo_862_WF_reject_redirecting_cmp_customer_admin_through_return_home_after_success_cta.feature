@cmpcbo-862 @customer @workflow @regression @sprint19
Feature: CMPCBO-862 - CMP Customer admin redirected through the return home button after successful reject action
  CMP Customer Admin are redirected post successful reject workflow to the client landing page

  @cmpcbo862-01
  Scenario Outline: CMP Customer Administrator to see be redirected to the client landing page through the return home button after
  successful reject action
    Given I navigate to the "customer_approver_non_own_workflow_pending" page
    When  I click on "workflow_reject_button"
    And I could see "workflow_popup_heading" as "<reject_user_popup_header>"
    And I click on "workflow_popup_yes_reject_button"
    And I click on "workflow_popup_return_home_button"
    Then I should see the "mock_landing_page" as "<client_landing_page>"

    Examples:
      | reject_user_popup_header | client_landing_page |
      | Reject workflow?         | Mock Landing Page   |





