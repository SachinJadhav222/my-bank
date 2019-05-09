@cmpcbo-365 @client @createClientMVP @regression @sprint07
Feature: CMPCBO-365 - Enhanced checkbox behaviour
  As a Colleague, after confirming the need for second primary admin, I should be able to
  see the default blank check box against "The Primary Administrator you are creating
  will become your primary contact" and able to select it.

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

  @cmpcbo365-01
  Scenario Outline: Colleague confirmed the secondary primary admin and sees the default blank check box against
  "The primary administrator you are creating will become your primary contact"
    When I should see "Create a new client" as "create_client_page_heading"
    Then I should see a message "<message>" displayed as "primary_contact_message"
    Examples:
      | message                                                          |
      | You must make one of the two administrators the primary contact. |

  @cmpcbo365-02
  Scenario Outline: Duel Admin uncheck first admin second admin become primary contact
    When I uncheck the checkbox "primary_admin_checkbox_label"
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
    And I should see Existing Primary Admin as "<title>","<firstName>","<lastName>" at "first_existing_primary_admin_name"
    And I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_heading"
    And I should see checkbox "primary_admin_checkbox_label" is checked
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
    Then I should see Existing Primary Admin as "<title>","<firstName>","<lastName>" at "first_existing_primary_admin_name"
    And I should see "first_plus_button" is Visible
    And I click on "first_plus_button"
    And I should see Sub Heading "First primary administrator details" at "first_primary_admin_details_label"
    And I should see a "first_primary_admin_email" as "<email>"
    And I should see a "is_first_primary_contact" as "No"
    And I should see a "is_first_audit_role" as "Yes"
    And I should see Existing Primary Admin as "<title2>","<firstName2>","<lastName2>" at "second_existing_primary_admin_name"
    And I should see "second_plus_button" is Visible
    And I click on "second_plus_button"
    And I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_label"
    And I should see a "second_primary_admin_email" as "<email2>"
    And I should see a "is_second_primary_contact" as "Yes"
    And I should see a "is_second_audit_role" as "Yes"

    Examples: First Admin Details
      | title | firstName | lastName | jobTitle | email           | confirmEmail    | phone      | address1 | address2         | town | country        | postcode | title2 | firstName2 | lastName2 | jobTitle2 | email2            | confirmEmail2     | phone2    | address12 | address22 | town2 | country2  |
      | Mr    | Reid      | Jones    | QE       | rjtest@test.com | rjtest@test.com | 0987654321 | 2FA      | Liverpool Street | East | United Kingdom | FA2 3FA  | Dr     | Law        | Tester    | DEV       | lttester@test.com | lttester@test.com | 987665544 | 3GT       | Westend   | Parth | Australia |

  @cmpcbo365-03
  Scenario Outline: Duel Admin uncheck Both admin First admin become primary contact
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
    And I should see Existing Primary Admin as "<title>","<firstName>","<lastName>" at "first_existing_primary_admin_name"
    And I should see "first_plus_button" is Visible
    And I click on "first_plus_button"
    Then I should see Sub Heading "First primary administrator details" at "first_primary_admin_details_label"
    And I should see a "first_primary_admin_email" as "<email>"
    And I should see a "is_first_primary_contact" as "Yes"
    And I should see a "is_first_audit_role" as "Yes"
    And I should see Existing Primary Admin as "<title2>","<firstName2>","<lastName2>" at "second_existing_primary_admin_name"
    And I should see "second_plus_button" is Visible
    And I click on "second_plus_button"
    And I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_label"
    And I should see a "second_primary_admin_email" as "<email2>"
    And I should see a "is_second_primary_contact" as "No"
    And I should see a "is_second_audit_role" as "Yes"

    Examples: First Admin Details
      | title | firstName | lastName | jobTitle | email           | confirmEmail    | phone      | address1 | address2         | town | country        | postcode | title2 | firstName2 | lastName2 | jobTitle2 | email2            | confirmEmail2     | phone2    | address12 | address22 | town2 | country2  |
      | Mr    | Reid      | Jones    | QE       | rjtest@test.com | rjtest@test.com | 0987654321 | 2FA      | Liverpool Street | East | United Kingdom | FA2 3FA  | Dr     | Law        | Tester    | DEV       | lttester@test.com | lttester@test.com | 987665544 | 3GT       | Westend   | Parth | Australia |

