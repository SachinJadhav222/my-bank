@cmpcbo-1157 @customer @clientEditUserDetails @regression @sprint22
Feature: CMPCBO-1157 - Check & confirm Page edit user action

  Background: Navigate to Check and confirm page
    Given I navigate to the "edit_user_primary_admin_client_volvo" page
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I click on "next_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    And I click on "next_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "next_button"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"

  @cmpcbo1157-01
  Scenario Outline: User details edit action
    When I click on "ucc_edit_user_details_button"
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I entered "<email>" in "new_email_entry_field"
    And I entered "<email>" in "new_confirm_email_entry_field"
    And I click on "next_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    And I click on "next_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "next_button"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I should see "<email>" as "user_email_readonly"
    Examples:
      | email                  |
      | new_test_email@lbg.com |


  @cmpcbo1157-02
  Scenario: Assign Roles  edit action
    When I click on "ucc_edit_assign_role_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"

  @cmpcbo1157-03
  Scenario: Set Home Page edit action
    When I click on "ucc_edit_homepage_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"



