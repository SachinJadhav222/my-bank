@cmpcbo-55 @client @colleagueCreatePAUser @regression @sprint23
Feature: CMPCBO-55- Navigation for Assign Role Page

  Background:
    And I SET the Cookie Name: "clientId" and Value: "3234567891"
    And I SET the Cookie Name: "correlationId" and Value: "1234567mockCorrelationID"

  @cmpcbo55-01
  Scenario Outline: Colleague set home page screen and see the Accounts by entity radio button preselected by default.
    Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "Mrs" from the dropdown "title_entry_field"
    And I entered "Legos" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "legotest@test.com" in "email_entry_field"
    And I entered "legotest@test.com" in "confirm_email_entry_field"
    And I entered "02011118908" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NT" in "postcode_entry_field"
    And I click on "continue_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"

    And  I should see the checkbox "pa_assign_role_checkbox_text" is preselected
    And  I should see "pa_assign_role_checkbox_text" displayed as "<checkbox_text>"

    And  I should see "pa_assign_role_division_label" is visible & displayed
    And  I should see "pa_assign_role_division_field" displayed as "<division>"

    And  I should see "pa_assign_role_role_profile_label" is visible & displayed
    And  I should see "pa_assign_role_role_profile_field" displayed as "<role_profile>"
    And  I should see "pa_assign_role_description_label" is visible & displayed
    And  I should see "pa_assign_role_description_field" displayed as "<role_description>"

    And the "continue_button" is activated
    Examples:
      | checkbox_text                | division    | role_profile          | role_description                                                                                  |
      | Cash management and payments | Volvo Group | Volvo primary profile | Administration functions including create and maintain users. Reporting and statements functions. |






