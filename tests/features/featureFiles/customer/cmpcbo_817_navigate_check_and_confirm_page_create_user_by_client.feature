@cmpcbo-817 @customer @regression @sprint17
Feature: CMPCBO-817 - Navigate from Set Home Page and create a new user Wizard
  I as colleague
  want to check
  Cancellation Model Window and Navigation Actions

  Background: Navigation to Check and Confirm Page
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "WiproOne" in "firstName_entry_field"
    And I entered "TesterOne" in "lastName_entry_field"
    And I entered "QE111" in "username_entry_field"
    And I entered "qetest@test.com" in "email_entry_field"
    And I entered "qetest@test.com" in "confirm_email_entry_field"
    And I entered "02011118902" in "phone_entry_field"
    And I entered "Address1" in "address_line1_entry_field"
    And I entered "Address2" in "address_line2_entry_field"
    And I entered "Address3" in "address_line3_entry_field"
    And I entered "New Town" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "next_button"

  @cmpcbo817-01
  Scenario Outline: Workflow ID created for the Create user
    When I could see "create_user_page_heading" as "Create a new user"
    And I click on "next_button"
    Then I should see "<confirmation_message_header>" as "create_user_workflow_header"
    And I should see "ucc_workflow_id" is visible & displayed
    And I should see "ucc_workflow_message" is visible & displayed
    And I should see "ucc_return_home_button" is visible & displayed
    And I should see "ucc_create_another_user_button" is visible & displayed
    Examples:
      | confirmation_message_header           |
      | Workflow created: Create user request |

  @cmpcbo817-02
  Scenario Outline: Client admin can sees a confirmation Modal Window with message and action buttons
    When I click on "cancel_create_user_button"
    Then I should see "<confirmation_message_header>" as "usr_cancel_confirmation_message_header"
    And I should see "<confirmation_message_body>" as "usr_cancel_confirmation_message_body"
    And I should see "<confirmation_message_action1>" as "usr_cancel_confirmation_message_no_button"
    And I should see "<confirmation_message_action2>" as "usr_cancel_confirmation_message_yes_button"

    Examples:
      | confirmation_message_header | confirmation_message_body                                   | confirmation_message_action1 | confirmation_message_action2 |
      | Cancel create a new user?   | Are you sure you want to cancel? All progress will be lost. | No, I don't want to cancel   | Yes, I want to cancel        |


  @cmpcbo817-03
  Scenario: Colleague navigated to the Create user page, select the cancel button, and click NO
    When I click on "cancel_create_user_button"
    And I click on "usr_cancel_confirmation_message_no_button"
    Then I should see Page Heading "Create a new user" as "create_user_page_heading"

  @cmpcbo817-04
  Scenario: Colleague navigated to the Create user page, select the cancel button, and click YES
    When I click on "cancel_create_user_button"
    And I click on "usr_cancel_confirmation_message_yes_button"
    Then I should see Page Heading "Mock Landing Page" at "mock_landing_page"

  @cmpcbo817-05
  Scenario: Colleague navigated to the Create user page, and click Previous Page
    When I click on "previous_button"
    Then I should see Page Heading "Set homepage" at "user_set_homepage_heading"




