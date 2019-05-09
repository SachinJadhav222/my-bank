@cmpcbo-1471 @client @colleagueCreatePAUser @regression @sprint23
Feature: CMPCBO-1471 - Modal window with error message for Email ID already in use
  Error message window to be shown to Client while trying to update email address which already exists

  Background: Colleague navigated to the edit user page
    And I SET the Cookie Name: "clientId" and Value: "3234567891"
    And I SET the Cookie Name: "correlationId" and Value: "1234567mockCorrelationID"
    Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page

  @cmpcbo1471-01
  Scenario Outline: Show modal window when email address is already in use
    Then  I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "Wipro" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "987654321" in "phone_entry_field"
    And I entered "Address Line -1" in "address_line1_entry_field"
    And I entered "Address Line -2" in "address_line2_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    And I click on "continue_button"
    Then I should see the "edit_popup_title_error_heading" as "<error_title_heading>"
    Examples:
      | email                   | error_title_heading |
      | FAILEDRSA@FAILEDRSA.com | Error               |

  @cmpcbo1471-02
  Scenario Outline: Return to Edit user details page  - non unique email address
    Then I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "WiproOne" in "firstName_entry_field"
    And I entered "TesterOne" in "lastName_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "987654321" in "phone_entry_field"
    And I entered "Address Line -1" in "address_line1_entry_field"
    And I entered "Address Line -2" in "address_line2_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    And I click on "continue_button"
    And I could see "edit_popup_title_error_heading" as "<error_title_heading>"
    And I click on "edit_popup_return_button"
    And I should see Page Heading "User details" at "user_details_page_heading"
    Examples:
      | email                   | error_title_heading |
      | FAILEDRSA@FAILEDRSA.com | Error               |

  @cmpcbo1471-03
  Scenario Outline: email address entered is in use - message
    Then I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "WiproOne" in "firstName_entry_field"
    And I entered "TesterOne" in "lastName_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "987654321" in "phone_entry_field"
    And I entered "Address Line -1" in "address_line1_entry_field"
    And I entered "Address Line -2" in "address_line2_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    And I click on "continue_button"
    Then I should see the "edit_popup_title_error_heading" as "<error_title_heading>"
    And I should see the "edit_popup_error_msg_body1" as "<error_message_body1>"
    And I should see the "edit_popup_error_msg_body2" as "<error_message_body2>"
    Examples:
      | email                   | error_message_body1                                                         | error_message_body2                                      | error_title_heading |
      | FAILEDRSA@FAILEDRSA.com | The email address you entered has already been used to set up another user. | Please enter an alternative email address and try again. | Error               |