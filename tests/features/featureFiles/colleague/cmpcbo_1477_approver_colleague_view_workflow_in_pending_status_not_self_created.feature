@cmpcbo-1477 @client @colleagueCreatePAUser @regression @sprint24
Feature: CMPCBO-1477 - Approver Colleague view workflow in Pending status not self created

  Background:

    And I SET the Cookie Name: "clientId" and Value: "6234567892"
    And I SET the Cookie Name: "correlationId" and Value: "1234569mockCorrelationIDD"

  @cmpcbo1477-01
  Scenario Outline:  Approver search workflow created by a maker and sees; "Back to search", "Reject" and "Approve"
    buttons on the check and confirm page
    Given I navigate to the "pa_user_pending_workflow_created_by_maker_login_approver_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    When I could see "ucc_check_and_confirm_page_heading" as "<check_confirm_page>"
    And I could see "pa_user_workflow_status" as "<workflow_status>"
    Then the "pa_user_workflow_back_to_search_button" is visible
    And the "pa_user_workflow_reject_button" is visible
    And the "pa_user_workflow_approve_button" is visible

    Examples:
      | check_confirm_page | workflow_status |
      | Check and confirm  | Pending         |

  @cmpcbo1477-02
  Scenario Outline:  Approver search workflow created by a maker and clicked the  "Back to search" button on the check and confirm page
    to return to the PA Workflow Search landing page
    Given I navigate to the "pa_user_pending_workflow_created_by_maker_login_approver_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    When I could see "ucc_check_and_confirm_page_heading" as "<check_confirm_page>"
    And I could see "pa_user_workflow_status" as "<workflow_status>"
    And I click on "pa_user_workflow_back_to_search_button"
    Then I should see Page Heading "PA User Workflow Search Page" at "pa_user_mock_workflow_landing_page_heading"

    Examples:
      | check_confirm_page | workflow_status |
      | Check and confirm  | Pending         |







