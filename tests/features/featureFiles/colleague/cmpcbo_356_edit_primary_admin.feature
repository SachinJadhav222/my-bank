@cmpcbo-356 @client @createClientMVP @regression @sprint07
Feature: CMPCBO-356 - Edit Primary Admin Details
  As a Colleague
  I want to Edit
  Primary Admin Details

  Background: Colleague chose CMP&P Service and navigated to the client details page

    Given I navigate to the "colleague_create_client_url" page
    And I entered "ASDA UK" in "client_name_entry_field"
    And I entered "1111111112" in "bp_id_entry_field"
    And I entered "1122334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "city_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "SS1 1QW" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"

  @cmpcbo356-01
  Scenario Outline: Edit & Save Primary Admin Details
    When I could see "create_client_page_heading" as "Create a new client"
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<firstName>" in "firstName_entry_field"
    And I entered "<lastName>" in "lastName_entry_field"
    And I entered "<jobTitle>" in "jobTitle_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<confirmEmail>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "next_button"
    And I click on "popup_second_admin_confirmation"
    And I should see Sub Heading "Existing primary administrator" at "existing_primary_admin_heading"
    And I should see Existing Primary Admin as "<title>","<firstName>","<lastName>" at "first_existing_primary_admin_name"
    And I should see "first_plus_button" is Visible
    And I click on "first_plus_button"
    And I should see a "first_primary_admin_email" as "<email>"
    And I should see a "is_first_primary_contact" as "Yes"
    And I should see a "is_first_audit_role" as "Yes"
    And I click on "first_edit_button"
    And I should see Sub Heading "Edit first Primary administrator details" at "primary_admin_details_heading"
    And I can Read field is pre-populated as "<firstName>" at the "firstName_entry_field"
    And I can Read field is pre-populated as "<lastName>" at the "lastName_entry_field"
    And I can Read field is pre-populated as "<jobTitle>" at the "jobTitle_entry_field"
    And I can Read field is pre-populated as "<email>" at the "email_entry_field"
    And I can Read field is pre-populated as "<confirmEmail>" at the "confirm_email_entry_field"
    And I can Read field is pre-populated as "<phone>" at the "phone_entry_field"
    And I can Read field is pre-populated as "<address1>" at the "address_line1_entry_field"
    And I can Read field is pre-populated as "<address2>" at the "address_line2_entry_field"
    And I can Read field is pre-populated as "<town>" at the "town_entry_field"
    And I entered "<newFirstName>" in "firstName_entry_field"
    And I entered "<newLastName>" in "lastName_entry_field"
    And I entered "<newEmail>" in "email_entry_field"
    And I entered "<newEmail>" in "confirm_email_entry_field"
    And I click on "save_button"
    Then I should see Sub Heading "Existing primary administrator" at "existing_primary_admin_heading"
    And I should see Existing Primary Admin as "<title>","<newFirstName>","<newLastName>" at "first_existing_primary_admin_name"
    And I should see a "first_primary_admin_email" as "<newEmail>"


    Examples: Form Fields
      | title | firstName | lastName | jobTitle | email           | confirmEmail    | phone      | address1 | address2         | town | country        | postcode | newFirstName      | newLastName      | newEmail             |
      | Mr    | Danny     | Boyle    | QE       | dbtest@test.com | dbtest@test.com | 0987654321 | 2FA      | Liverpool Street | East | United Kingdom | FA2 3FA  | newAdminFirstName | newAdminLastName | newTestEmail@lbg.com |

  @cmpcbo356-02
  Scenario Outline: View & Edit First & Second Primary Admin Details
    When I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<firstName>" in "firstName_entry_field"
    And I entered "<lastName>" in "lastName_entry_field"
    And I entered "<jobTitle>" in "jobTitle_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<confirmEmail>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "next_button"
    And I click on "popup_second_admin_confirmation"
    And I should see Existing Primary Admin as "<title>","<firstName>","<lastName>" at "first_existing_primary_admin_name"
    And I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_heading"
    And I select by Text "<title2>" from the dropdown "title_entry_field"
    And I entered "<firstName2>" in "firstName_entry_field"
    And I entered "<lastName2>" in "lastName_entry_field"
    And I entered "<jobTitle2>" in "jobTitle_entry_field"
    And I entered "<email2>" in "email_entry_field"
    And I entered "<confirmEmail2>" in "confirm_email_entry_field"
    And I entered "<phone2>" in "phone_entry_field"
    And I entered "<address12>" in "address_line1_entry_field"
    And I entered "<address22>" in "address_line2_entry_field"
    And I entered "<town2>" in "town_entry_field"
    And I select by Text "<country2>" from the dropdown "country_entry_field"
    And I click on "next_button"
    And I click on "prev_button"
    And I should see Existing Primary Admin as "<title2>","<firstName2>","<lastName2>" at "second_existing_primary_admin_name"
    And I should see "second_plus_button" is Visible
    And I click on "second_plus_button"
    And I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_label"
    And I should see a "second_primary_admin_email" as "<email2>"
    And I should see a "is_second_primary_contact" as "No"
    And I should see a "is_second_audit_role" as "Yes"
    And I click on "second_edit_button"
    Then I should see Sub Heading "Edit second Primary administrator details" at "primary_admin_details_heading"
    And I can Read field is pre-populated as "<firstName2>" at the "firstName_entry_field"
    And I can Read field is pre-populated as "<lastName2>" at the "lastName_entry_field"
    And I can Read field is pre-populated as "<jobTitle2>" at the "jobTitle_entry_field"
    And I can Read field is pre-populated as "<email2>" at the "email_entry_field"
    And I can Read field is pre-populated as "<confirmEmail2>" at the "confirm_email_entry_field"
    And I can Read field is pre-populated as "<phone2>" at the "phone_entry_field"
    And I can Read field is pre-populated as "<address12>" at the "address_line1_entry_field"
    And I can Read field is pre-populated as "<address22>" at the "address_line2_entry_field"
    And I can Read field is pre-populated as "<town2>" at the "town_entry_field"
    And I entered "<newFirstName>" in "firstName_entry_field"
    And I entered "<newLastName>" in "lastName_entry_field"
    And I entered "<newEmail>" in "email_entry_field"
    And I entered "<newEmail>" in "confirm_email_entry_field"
    And I click on "save_button"

    Examples: First & Second  Admin Details
      | title | firstName | lastName | jobTitle | email           | confirmEmail    | phone      | address1 | address2         | town | country        | postcode | title2 | firstName2 | lastName2 | jobTitle2 | email2        | confirmEmail2 | phone2    | address12 | address22 | town2 | country2  | newFirstName | newLastName | newEmail        |
      | Mr    | Danny     | Boyle    | QE       | dbtest@test.com | dbtest@test.com | 0987654321 | 2FA      | Liverpool Street | East | United Kingdom | FA2 3FA  | Dr     | Wipro      | Tester    | DEV       | dev@wipro.com | dev@wipro.com | 987665544 | 3GT       | Westend   | Park  | Australia | DanielNEW    | JonesNEW    | testNEW@lbg.com |


