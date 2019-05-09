@cmpcbo-1470 @client @colleagueCreatePAUser @regression @sprint23
Feature: CMPCBO-1470 - Error message for existing email ID entered for PA  user

  Background:
    And I SET the Cookie Name: "clientId" and Value: "3234567891"
    And I SET the Cookie Name: "correlationId" and Value: "1234567mockCorrelationID"

  @cmpcbo1470-01
  Scenario Outline: Colleague types non unique Email address in Create User page and gets Error message
    Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "WiproOne" in "firstName_entry_field"
    And I entered "TesterOne" in "lastName_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "02011118902" in "phone_entry_field"
    And I entered "Address1" in "address_line1_entry_field"
    And I entered "Address2" in "address_line2_entry_field"
    And I entered "Address3" in "address_line3_entry_field"
    And I entered "New Town" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    When I click on "continue_button"
    And I could see "edit_popup_title_error_heading" as "Error"
    And I click on "edit_popup_return_button"
    And I should see Page Heading "User details" at "user_details_page_heading"
    Then I should see "email_entry_field" outline is Highlighted RED color
    And I should see Error Message "<email_error_message>" displayed at "email_already_in_use_message1"

    Examples:
      | email                   | email_error_message      |
      | FAILEDRSA@FAILEDRSA.com | Email is already in use. |

