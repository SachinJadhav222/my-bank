@cmpcbo-56 @client @colleagueCreatePAUser @regression @sprint23
Feature: CMPCBO-56- Set Home Page got PA User journey

  Background:
    And I SET the Cookie Name: "clientId" and Value: "3234567891"
    And I SET the Cookie Name: "correlationId" and Value: "1234567mockCorrelationID"

  @cmpcbo56-01
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
   # And I select by Index "1" from the dropdown "uar_select_business_partner"
   # And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "continue_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I should see "user_set_homepage_accounts_by_entity_radio_button" existed and preselected
    And I should see the "user_set_homepage_description_field" as "<set_homepage_description>"

    Examples:
       | set_homepage_description                                                      |
       | This page displays a summary of your accounts and balances grouped by entity. |





