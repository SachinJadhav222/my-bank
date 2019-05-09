@cmpcbo-1476 @client @colleagueCreatePAUser @regression @sprint24
Feature: CMPCBO-1476- PA User Workflow Cancel Self Created Workflow

  Background:
    And I SET the Cookie Name: "clientId" and Value: "6234567892"
    And I SET the Cookie Name: "correlationId" and Value: "1234569mockCorrelationIDD"

  @cmpcbo1476-01
  Scenario Outline:  Approver cancel Own Workflow status-Back Button
    Given I navigate to the "pa_user_own_pending_workflow_created_by_approver_login_approver_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "check_confirm_page_heading"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    And I click on "pa_user_workflow_cancel_button"
    And I should see "<confirmation_message_header>" as "pa_user_workflow_popup_header"
    And I should see "<confirmation_message_body>" as "pa_user_workflow_popup_body"
    When I click on "pa_user_workflow_back_button"
    Then I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"

    Examples:
      | workflow_item_id             | workflow_status | confirmation_message_header | confirmation_message_body                |
      | Workflow item ID: 1006307731 | Pending         | Cancel workflow?            | Are you sure you want to cancel workflow |


  @cmpcbo1476-02
  Scenario Outline:  Approver cancel Own Workflow status-Yes Cancel Button
    Given I navigate to the "pa_user_own_pending_workflow_created_by_approver_login_approver_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "check_confirm_page_heading"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    And I click on "pa_user_workflow_cancel_button"
    And I should see "<confirmation_message_header_1>" as "pa_user_workflow_popup_header"
    And I should see "<confirmation_message_body_1>" as "pa_user_workflow_popup_body"
    And I click on "pa_user_workflow_yes_cancel_workflow_button"
    And I should see "<confirmation_message_header_2>" as "pa_user_workflow_popup_header"
    When I click on "pa_user_workflow_return_home_button"
    Then I should see Page Heading "PA User Workflow Search Page" at "pa_user_mock_workflow_landing_page_heading"

    Examples:
      | workflow_item_id             | workflow_status | confirmation_message_header_1 | confirmation_message_body_1              | confirmation_message_header_2 |
      | Workflow item ID: 1006307731 | Pending         | Cancel workflow?              | Are you sure you want to cancel workflow | Workflow cancelled            |


  @cmpcbo1476-03
  Scenario Outline:  Maker cancel Own Workflow status-Back Button
    Given I navigate to the "pa_user_own_pending_workflow_created_by_maker_login_maker_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "check_confirm_page_heading"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    And I click on "pa_user_workflow_cancel_button"
    And I should see "<confirmation_message_header>" as "pa_user_workflow_popup_header"
    And I should see "<confirmation_message_body>" as "pa_user_workflow_popup_body"
    When I click on "pa_user_workflow_back_button"
    Then I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"

    Examples:
      | workflow_item_id             | workflow_status | confirmation_message_header | confirmation_message_body                |
      | Workflow item ID: 9063077318 | Pending         | Cancel workflow?            | Are you sure you want to cancel workflow |


  @cmpcbo1476-04
  Scenario Outline:  Maker cancel Own Workflow status-Yes Cancel Button
    Given I navigate to the "pa_user_own_pending_workflow_created_by_maker_login_maker_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "check_confirm_page_heading"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    And I click on "pa_user_workflow_cancel_button"
    And I should see "<confirmation_message_header_1>" as "pa_user_workflow_popup_header"
    And I should see "<confirmation_message_body_1>" as "pa_user_workflow_popup_body"
    And I click on "pa_user_workflow_yes_cancel_workflow_button"
    And I should see "<confirmation_message_header_2>" as "pa_user_workflow_popup_header"
    When I click on "pa_user_workflow_return_home_button"
    Then I should see Page Heading "PA User Workflow Search Page" at "pa_user_mock_workflow_landing_page_heading"

    Examples:
      | workflow_item_id             | workflow_status | confirmation_message_header_1 | confirmation_message_body_1              | confirmation_message_header_2 |
      | Workflow item ID: 9063077318 | Pending         | Cancel workflow?              | Are you sure you want to cancel workflow | Workflow cancelled            |








