@cmpcbo-1479 @client @colleagueCreatePAUser @regression @sprint24
Feature: CMPCBO-1479- PA Reject NON self created workflow

  Background:

    And I SET the Cookie Name: "clientId" and Value: "6234567892"
    And I SET the Cookie Name: "correlationId" and Value: "1234569mockCorrelationIDD"

  @cmpcbo1479-01
  Scenario Outline:  Approver Colleague to see confirmation pop-up on clicking Reject action
    Given I navigate to the "pa_user_pending_workflow_created_by_maker_login_approver_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    When I click on "pa_user_workflow_reject_button"
    Then I should see "<confirmation_message_header>" as "pa_user_workflow_popup_header"
    And I should see "<confirmation_message_body>" as "pa_user_workflow_popup_body"
    Examples:
      | workflow_item_id  | workflow_status | confirmation_message_header | confirmation_message_body                |
      | Workflow item ID: | Pending         | Reject workflow             | Are you sure you want to reject workflow |


  @cmpcbo1479-02
  Scenario Outline:  Approver reject workflow created by Maker - Return home Button
    Given I navigate to the "pa_user_pending_workflow_created_by_maker_login_approver_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    And I click on "pa_user_workflow_reject_button"
    And I should see "<confirmation_message_header_1>" as "pa_user_workflow_popup_header"
    And I should see "<confirmation_message_body_1>" as "pa_user_workflow_popup_body"
    And I click on "pa_user_workflow_yes_reject_workflow_button"
    And I should see "<confirmation_message_header_2>" as "pa_user_workflow_popup_header"
    When I click on "pa_user_workflow_return_home_button"
    Then I should see Page Heading "PA User Workflow Search Page" at "pa_user_mock_workflow_landing_page_heading"

    Examples:
      | workflow_item_id  | workflow_status | confirmation_message_header_1 | confirmation_message_body_1              | confirmation_message_header_2 |
      | Workflow item ID: | Pending         | Reject workflow               | Are you sure you want to reject workflow | Reject workflow               |


  @cmpcbo1479-03
  Scenario Outline:  Approver reject workflow created by maker - Back Button
    Given I navigate to the "pa_user_pending_workflow_created_by_maker_login_approver_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    And I click on "pa_user_workflow_reject_button"
    And I should see "<confirmation_message_header>" as "pa_user_workflow_popup_header"
    And I should see "<confirmation_message_body>" as "pa_user_workflow_popup_body"
    When I click on "pa_user_workflow_back_button"
    Then I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"

    Examples:
      | workflow_item_id  | workflow_status | confirmation_message_header | confirmation_message_body                |
      | Workflow item ID: | Pending         | Reject workflow             | Are you sure you want to reject workflow |


  @cmpcbo1479-04
  Scenario Outline:  Approver reject workflow created by Approver - Back to search
    Given I navigate to the "pa_user_pending_workflow_created_by_maker_login_approver_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    And I click on "pa_user_workflow_reject_button"
    And I should see "<confirmation_message_header_1>" as "pa_user_workflow_popup_header"
    And I should see "<confirmation_message_body_1>" as "pa_user_workflow_popup_body"
    And I click on "pa_user_workflow_yes_reject_workflow_button"
    And I should see "<confirmation_message_header_2>" as "pa_user_workflow_popup_header"
    And I click on "pa_user_workflow_back_to_search_button2"
    Then I should see Page Heading "PA User Workflow Search Page" at "pa_user_mock_workflow_landing_page_heading"
    Examples:
      | workflow_item_id  | workflow_status | confirmation_message_header_1 | confirmation_message_body_1              | confirmation_message_header_2 |
      | Workflow item ID: | Pending         | Reject workflow               | Are you sure you want to reject workflow | Reject workflow               |








