@cmpcbo-355 @client @createClientMVP @regression @sprint06
Feature: CMPCBO-355 - View Primary Admin Details
  As a Colleague
  I want to view the Primary Admin Details

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

  @cmpcbo355-01
  Scenario Outline: View Primary Admin Details
    When I could see "create_client_page_heading" as "Create a new client"
    Then I select by Text "<title>" from the dropdown "title_entry_field"
    Then I entered "<firstName>" in "firstName_entry_field"
    Then I entered "<lastName>" in "lastName_entry_field"
    Then I entered "<jobTitle>" in "jobTitle_entry_field"
    Then I entered "<email>" in "email_entry_field"
    Then I entered "<confirmEmail>" in "confirm_email_entry_field"
    Then I entered "<phone>" in "phone_entry_field"
    Then I entered "<address1>" in "address_line1_entry_field"
    Then I entered "<address2>" in "address_line2_entry_field"
    Then I entered "<town>" in "town_entry_field"
    Then I select by Text "<country>" from the dropdown "country_entry_field"
    Then I entered "<postcode>" in "postcode_entry_field"
    Then I click on "next_button"
    Then I click on "popup_second_admin_confirmation"
    Then I should see Sub Heading "Existing primary administrator" at "existing_primary_admin_heading"
    Then I should see Existing Primary Admin as "<title>","<firstName>","<lastName>" at "first_existing_primary_admin_name"

    Examples:
      | title | firstName | lastName | jobTitle | email         | confirmEmail  | phone      | address1 | address2         | town | country        | postcode |
      | Mr    | Daniel    | Jones    | QE       | test@test.com | test@test.com | 0987654321 | 2FA      | Liverpool Street | East | United Kingdom | FA2 3FA  |

  @cmpcbo355-02
  Scenario Outline: View First Primary Admin Details
    Then I select by Text "<title>" from the dropdown "title_entry_field"
    Then I entered "<firstName>" in "firstName_entry_field"
    Then I entered "<lastName>" in "lastName_entry_field"
    Then I entered "<jobTitle>" in "jobTitle_entry_field"
    Then I entered "<email>" in "email_entry_field"
    Then I entered "<confirmEmail>" in "confirm_email_entry_field"
    Then I entered "<phone>" in "phone_entry_field"
    Then I entered "<address1>" in "address_line1_entry_field"
    Then I entered "<address2>" in "address_line2_entry_field"
    Then I entered "<town>" in "town_entry_field"
    Then I select by Text "<country>" from the dropdown "country_entry_field"
    Then I entered "<postcode>" in "postcode_entry_field"
    Then I click on "next_button"
    Then I click on "popup_second_admin_confirmation"
    Then I should see Page Heading "Existing primary administrator" at "existing_primary_admin_heading"
    Then I should see Existing Primary Admin as "<title>","<firstName>","<lastName>" at "first_existing_primary_admin_name"
    Then I should see "first_plus_button" is Visible
    When I click on "first_plus_button"
    Then I should see Sub Heading "First primary administrator details" at "first_primary_admin_details_label"
    Then I should see a "first_primary_admin_email" as "<email>"
    Then I click on "first_minus_button"
    Then I should see "first_plus_button" is Visible

    Examples:
      | title | firstName | lastName | jobTitle | email           | confirmEmail    | phone      | address1 | address2         | town | country        | postcode |
      | Mr    | Daniel    | Jones    | QE       | djtest@test.com | djtest@test.com | 0987654321 | 2FA      | Liverpool Street | East | United Kingdom | FA2 3FA  |

  @cmpcbo355-03
  Scenario Outline: View First & Second Primary Admin Details
    Then I select by Text "<title>" from the dropdown "title_entry_field"
    Then I entered "<firstName>" in "firstName_entry_field"
    Then I entered "<lastName>" in "lastName_entry_field"
    Then I entered "<jobTitle>" in "jobTitle_entry_field"
    Then I entered "<email>" in "email_entry_field"
    Then I entered "<confirmEmail>" in "confirm_email_entry_field"
    Then I entered "<phone>" in "phone_entry_field"
    Then I entered "<address1>" in "address_line1_entry_field"
    Then I entered "<address2>" in "address_line2_entry_field"
    Then I entered "<town>" in "town_entry_field"
    Then I select by Text "<country>" from the dropdown "country_entry_field"
    Then I entered "<postcode>" in "postcode_entry_field"
    Then I click on "next_button"
    Then I click on "popup_second_admin_confirmation"
    Then I should see Existing Primary Admin as "<title>","<firstName>","<lastName>" at "first_existing_primary_admin_name"
    Then I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_heading"
    Then I select by Text "<title2>" from the dropdown "title_entry_field"
    Then I entered "<firstName2>" in "firstName_entry_field"
    Then I entered "<lastName2>" in "lastName_entry_field"
    Then I entered "<jobTitle2>" in "jobTitle_entry_field"
    Then I entered "<email2>" in "email_entry_field"
    Then I entered "<confirmEmail2>" in "confirm_email_entry_field"
    Then I entered "<phone2>" in "phone_entry_field"
    Then I entered "<address12>" in "address_line1_entry_field"
    Then I entered "<address22>" in "address_line2_entry_field"
    Then I entered "<town2>" in "town_entry_field"
    Then I select by Text "<country2>" from the dropdown "country_entry_field"
    Then I click on "next_button"
    Then I click on "prev_button"
    Then I should see Existing Primary Admin as "<title>","<firstName>","<lastName>" at "first_existing_primary_admin_name"
    Then I should see "first_plus_button" is Visible
    When I click on "first_plus_button"
    Then I should see Sub Heading "First primary administrator details" at "first_primary_admin_details_label"
    Then I should see a "first_primary_admin_email" as "<email>"
    And I should see a "is_first_primary_contact" as "Yes"
    And I should see a "is_first_audit_role" as "Yes"
    Then I should see Existing Primary Admin as "<title2>","<firstName2>","<lastName2>" at "second_existing_primary_admin_name"
    Then I should see "second_plus_button" is Visible
    When I click on "second_plus_button"
    Then I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_label"
    Then I should see a "second_primary_admin_email" as "<email2>"
    And I should see a "is_second_primary_contact" as "No"
    And I should see a "is_second_audit_role" as "Yes"

    Examples: First Admin Details
      | title | firstName | lastName | jobTitle | email           | confirmEmail    | phone      | address1 | address2         | town | country        | postcode | title2 | firstName2 | lastName2 | jobTitle2 | email2        | confirmEmail2 | phone2    | address12 | address22 | town2 | country2  |
      | Mr    | Daniel    | Jones    | QE       | djtest@test.com | djtest@test.com | 0987654321 | 2FA      | Liverpool Street | East | United Kingdom | FA2 3FA  | Dr     | Wipro      | Tester    | DEV       | dev@wipro.com | dev@wipro.com | 987665544 | 3GT       | Westend   | Parth | Australia |

