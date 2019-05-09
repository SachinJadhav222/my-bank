@cmpcbo-1481 @client @colleagueCreatePAUser @regression @sprint23
Feature: CMPCBO-1481 - empty confirm email field when editing email address
  Empty confirm email field when editing email address using edit button on check and confirm page

  Background:
    And I SET the Cookie Name: "clientId" and Value: "3234567891"
    And I SET the Cookie Name: "correlationId" and Value: "1234567mockCorrelationID"


  @cmpcbo1481-01
  Scenario Outline: Client captured user's details and navigate to the check and confirm page and edit user's email address
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
    And I click on "continue_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    And I click on "continue_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "continue_button"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    When I click on "edit_user_details"
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I entered "<emailNew>" in "email_entry_field"
    Then the "confirm_email_entry_field" is empty

    Examples:
      | email       | emailNew        |
      | jk@test.com | newjkw@test.com |



  




