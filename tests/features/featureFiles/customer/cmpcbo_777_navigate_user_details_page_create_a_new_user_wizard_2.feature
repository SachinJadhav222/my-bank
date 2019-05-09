@cmpcbo-777 @customer @regression @sprint16
Feature: CMPCBO-777 - Navigate to User details page and create a new user Wizard-2
  I as colleague
  want to check
  Cancellation Model Window and Navigation Actions

  Background: Navigation to Assign Role Page
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

  @cmpcbo777-01
  Scenario Outline: Client admin can see a confirmation Modal Window with message and action buttons
    When I could see "assign_roles_heading" as "Assign roles"
    And I click on "cancel_create_user_button"
    Then I should see "<confirmation_message_header>" as "usr_cancel_confirmation_message_header"
    And I should see "<confirmation_message_body>" as "usr_cancel_confirmation_message_body"
    And I should see "<confirmation_message_action1>" as "usr_cancel_confirmation_message_no_button"
    And I should see "<confirmation_message_action2>" as "usr_cancel_confirmation_message_yes_button"

    Examples:
      | confirmation_message_header | confirmation_message_body                                   | confirmation_message_action1 | confirmation_message_action2 |
      | Cancel create a new user?   | Are you sure you want to cancel? All progress will be lost. | No, I don't want to cancel   | Yes, I want to cancel        |


