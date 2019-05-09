@cmpcbo-845 @customer @workflow @regression  @sprint17
Feature: CMPCBO-845 - Customer sees workflow status control buttons

  @cmpcbo845-01
  Scenario: Customer Maker APPROVED workflow
    Given I navigate to the "customer_maker_approved" page
    Then I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    Then I should see "back_to_search_button" is visible & displayed

  @cmpcbo845-02
  Scenario: Customer Maker CANCELLED workflow
    Given I navigate to the "customer_maker_cancelled" page
    Then I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    Then I should see "back_to_search_button" is visible & displayed

  @cmpcbo845-03
  Scenario: Customer Maker REJECTED workflow
    Given I navigate to the "customer_maker_rejected" page
    Then I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    Then I should see "back_to_search_button" is visible & displayed

  @cmpcbo845-04
  Scenario: Customer approver APPROVED workflow
    Given I navigate to the "customer_approver_approved" page
    Then I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    Then I should see "back_to_search_button" is visible & displayed

  @cmpcbo845-05
  Scenario: Customer approver CANCELLED workflow
    Given I navigate to the "customer_approver_cancelled" page
    Then I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    Then I should see "back_to_search_button" is visible & displayed

  @cmpcbo845-06
  Scenario: Customer approver REJECTED workflow
    Given I navigate to the "customer_approver_rejected" page
    Then I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    Then I should see "back_to_search_button" is visible & displayed

  @cmpcbo845-06
  Scenario: Customer Approver OWN pending workflow
    Given I navigate to the "customer_approver_own_workflow_pending" page
    Then I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I should see "back_to_search_button" is visible & displayed
    And I should see "workflow_cancel_button" is visible & displayed

  @cmpcbo845-07
  Scenario: Customer Maker OWN pending workflow
    Given I navigate to the "customer_maker_own_workflow_pending" page
    Then I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I should see "back_to_search_button" is visible & displayed
    And I should see "workflow_cancel_button" is visible & displayed

  @cmpcbo845-08
  Scenario: Pending workflow created by Maker and log in as Approver
    Given I navigate to the "customer_created_by_maker_log_as_approver" page
    Then I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I should see "back_to_search_button" is visible & displayed
    And I should see "workflow_reject_button" is visible & displayed
    And I should see "workflow_approved_button" is visible & displayed

  @cmpcbo845-09
  Scenario: Pending workflow created by Approver and log in as Maker
    Given I navigate to the "customer_created_by_approver_log_as_maker" page
    Then I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I should see "back_to_search_button" is visible & displayed




