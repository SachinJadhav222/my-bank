@cmpcbo-357 @client @createClientMVP @regression @sprint08
Feature: CMPCBO-357 - Delete Primary Admin Details
  As a Colleague
  I want to Delete
  Primary Admin Details

  Background: Colleague chose CMP&P Service and navigated to the client details page
    Given I navigate to the "colleague_create_client_url" page
    And I entered "FORD UK" in "client_name_entry_field"
    And I entered "1111111115" in "bp_id_entry_field"
    And I entered "1122334466" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "city_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"

  @cmpcbo357-01
  Scenario Outline: Cancel Delete Primary Admin Details Message
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
    Then I should see Sub Heading "Existing primary administrator" at "existing_primary_admin_heading"
    And I should see Existing Primary Admin as "<title>","<firstName>","<lastName>" at "first_existing_primary_admin_name"
    And I should see "first_plus_button" is Visible
    And I click on "first_plus_button"
    And I should see a "first_primary_admin_email" as "<email>"
    And I should see a "is_first_primary_contact" as "Yes"
    And I should see a "is_first_audit_role" as "Yes"
    And I click on "first_delete_button"
    And I should see a message "Delete primary administrator" displayed as "popup_delete_message"
    And I click on "popup_cancel_delete_button"
    And I should see "Create a new client" as "create_client_page_heading"

    Examples: Form Fields
      | title | firstName | lastName | jobTitle | email           | confirmEmail    | phone      | address1 | address2         | town | country        | postcode |
      | Mr    | Heston    | Jones    | QE       | hjtest@test.com | hjtest@test.com | 0987654321 | 2FA      | Liverpool Street | East | United Kingdom | FA2 3FA  |

  @cmpcbo357-02
  Scenario Outline: Delete Primary Admin Details Message
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
    Then I should see Sub Heading "Existing primary administrator" at "existing_primary_admin_heading"
    And I should see Existing Primary Admin as "<title>","<firstName>","<lastName>" at "first_existing_primary_admin_name"
    And I should see "first_plus_button" is Visible
    And I click on "first_plus_button"
    And I should see a "first_primary_admin_email" as "<email>"
    And I should see a "is_first_primary_contact" as "Yes"
    And I should see a "is_first_audit_role" as "Yes"
    And I click on "first_delete_button"
    And I should see a message "Delete primary administrator" displayed as "popup_delete_message"
    And I click on "popup_confirm_delete_button"
    And I should see "Create a new client" as "create_client_page_heading"

    Examples: Form Fields
      | title | firstName | lastName | jobTitle | email           | confirmEmail    | phone      | address1 | address2         | town | country        | postcode |
      | Mr    | Heston    | Jones    | QE       | hjtest@test.com | hjtest@test.com | 0987654321 | 2FA      | Liverpool Street | East | United Kingdom | FA2 3FA  |


