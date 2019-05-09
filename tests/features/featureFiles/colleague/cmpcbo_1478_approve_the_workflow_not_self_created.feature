@cmpcbo-1478 @client @colleagueCreatePAUser @regression @sprint24
Feature: CMPCBO-1478 - Approve the workflow not self created

  Background:

    And I SET the Cookie Name: "clientId" and Value: "6234567892"
    And I SET the Cookie Name: "correlationId" and Value: "1234569mockCorrelationIDD"

  @cmpcbo1478-01
  Scenario Outline:  Approver colleague to see a confirmation pop-up on clicking approve button
    Given I navigate to the "pa_user_pending_workflow_created_by_maker_login_approver_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    When I could see "ucc_check_and_confirm_page_heading" as "<check_confirm_page>"
    And the "pa_user_workflow_approve_button" is visible
    And I click on "pa_user_workflow_approve_button"
    Then the "pa_user_approver_confirmation_text" is displayed as "<approve_workflow_confirmation_msg>"
    Examples:
      | check_confirm_page | approve_workflow_confirmation_msg                      |
      | Check and confirm  | Are you sure you want to approve workflow 8063077318 ? |

  @cmpcbo1478-02
  Scenario Outline:  Approver colleague to confirm Approve action on pop-up
    Given I navigate to the "pa_user_pending_workflow_created_by_maker_login_approver_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    When I could see "ucc_check_and_confirm_page_heading" as "<check_confirm_page>"
    And the "pa_user_workflow_approve_button" is visible
    And I click on "pa_user_workflow_approve_button"
    And the "pa_user_approver_confirmation_text" is displayed as "<approve_workflow_confirmation_msg>"
    And I click on "pa_user_workflow_yes_approve_workflow_button"
    Then the "pa_user_workflow_popup_header" is displayed as "<confirmation_header>"
    And I should see "pa_user_approver_confirmation_text" displayed as "<workflow_message_body>"
    Examples:
      | check_confirm_page | approve_workflow_confirmation_msg                      | confirmation_header | workflow_message_body                                                                                 |
      | Check and confirm  | Are you sure you want to approve workflow 8063077318 ? | Workflow Approved   | Workflow ID (8063077318) has been successfully approved.\nThe client ID for the client is 6234567892. |

  @cmpcbo1478-03
  Scenario Outline:  Return Home button
    Given I navigate to the "pa_user_pending_workflow_created_by_maker_login_approver_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    When I could see "ucc_check_and_confirm_page_heading" as "<check_confirm_page>"
    And the "pa_user_workflow_approve_button" is visible
    And I click on "pa_user_workflow_approve_button"
    And the "pa_user_approver_confirmation_text" is displayed as "<approve_workflow_confirmation_msg>"
    And I click on "pa_user_workflow_yes_approve_workflow_button"
    And I click on "pa_user_workflow_return_home_button"
    Then I should see Page Heading "PA User Workflow Search Page" at "pa_user_mock_workflow_landing_page_heading"
    Examples:
      | check_confirm_page | approve_workflow_confirmation_msg                      |
      | Check and confirm  | Are you sure you want to approve workflow 8063077318 ? |

  @cmpcbo1478-04
  Scenario Outline:  Back to search
    Given I navigate to the "pa_user_pending_workflow_created_by_maker_login_approver_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    When I could see "ucc_check_and_confirm_page_heading" as "<check_confirm_page>"
    And the "pa_user_workflow_approve_button" is visible
    And I click on "pa_user_workflow_approve_button"
    And the "pa_user_approver_confirmation_text" is displayed as "<approve_workflow_confirmation_msg>"
    And I click on "pa_user_workflow_yes_approve_workflow_button"
    And I click on "pa_user_workflow_back_to_search_button2"
    Then I should see Page Heading "PA User Workflow Search Page" at "pa_user_mock_workflow_landing_page_heading"
    Examples:
      | check_confirm_page | approve_workflow_confirmation_msg                      |
      | Check and confirm  | Are you sure you want to approve workflow 8063077318 ? |














