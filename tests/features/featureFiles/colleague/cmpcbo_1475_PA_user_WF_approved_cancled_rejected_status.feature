@cmpcbo-1475 @client @colleagueCreatePAUser @regression @sprint24
Feature: CMPCBO-1475- PA User Workflow Pending Rejected and Cancelled status

  Background:

    And I SET the Cookie Name: "clientId" and Value: "6234567892"
    And I SET the Cookie Name: "correlationId" and Value: "1234569mockCorrelationIDD"

  @cmpcbo1475-01
  Scenario Outline: PA User Workflow created by Maker Approved status
    Given I navigate to the "pa_user_workflow_created_by_maker_approved_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    And I click on "pa_user_workflow_back_to_search_button"
    And I should see Page Heading "PA User Workflow Search Page" at "pa_user_mock_workflow_landing_page_heading"

    Examples:
      | workflow_item_id  | workflow_status |
      | Workflow item ID: | Approved        |


  @cmpcbo1475-02
  Scenario Outline: PA User Workflow created by Maker Rejected status
    Given I navigate to the "pa_user_workflow_created_by_maker_rejected_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I Get the LocalStorage by Key: "referringUrl"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    And I click on "pa_user_workflow_back_to_search_button"
    And I should see Page Heading "PA User Workflow Search Page" at "pa_user_mock_workflow_landing_page_heading"

    Examples:
      | workflow_item_id  | workflow_status |
      | Workflow item ID: | Rejected        |


  @cmpcbo1475-03
  Scenario Outline: PA User Workflow created by Maker Cancelled status
   Given I navigate to the "pa_user_workflow_created_by_maker_cancelled_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I Get the LocalStorage by Key: "referringUrl"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    And I click on "pa_user_workflow_back_to_search_button"
    And I should see Page Heading "PA User Workflow Search Page" at "pa_user_mock_workflow_landing_page_heading"


    Examples:
      | workflow_item_id  | workflow_status |
      | Workflow item ID: | Cancelled       |

  @cmpcbo1475-04
  Scenario Outline: PA User Workflow created by Approver Approved status
    Given I navigate to the "pa_user_workflow_created_by_approver_approved_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    And I click on "pa_user_workflow_back_to_search_button"
    And I should see Page Heading "PA User Workflow Search Page" at "pa_user_mock_workflow_landing_page_heading"

    Examples:
      | workflow_item_id  | workflow_status |
      | Workflow item ID: | Approved        |


  @cmpcbo1475-05
  Scenario Outline: PA User Workflow created by Approver Rejected status
    Given I navigate to the "pa_user_workflow_created_by_approver_rejected_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I Get the LocalStorage by Key: "referringUrl"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    And I click on "pa_user_workflow_back_to_search_button"
    And I should see Page Heading "PA User Workflow Search Page" at "pa_user_mock_workflow_landing_page_heading"

    Examples:
      | workflow_item_id  | workflow_status |
      | Workflow item ID: | Rejected        |


  @cmpcbo1475-06
  Scenario Outline: PA User Workflow created by Approver Cancelled status
   Given I navigate to the "pa_user_workflow_created_by_approver_cancelled_url" page
    And I SET the LocalStorage referringUrl to url: "pa_user_mock_workflow_landing_page_url"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I Get the LocalStorage by Key: "referringUrl"
    And I should see "<workflow_item_id>" as "pa_user_workflow_item_id"
    And I should see "<workflow_status>" as "pa_user_workflow_status"
    And I click on "pa_user_workflow_back_to_search_button"
    And I should see Page Heading "PA User Workflow Search Page" at "pa_user_mock_workflow_landing_page_heading"


    Examples:
      | workflow_item_id  | workflow_status |
      | Workflow item ID: | Cancelled       |

