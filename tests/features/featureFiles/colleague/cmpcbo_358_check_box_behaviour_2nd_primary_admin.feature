@cmpcbo-358 @client @createClientMVP @regression @sprint06
Feature: CMPCBO-358 - View Existing Primary Admin Details
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

  @cmpcbo358-01
  Scenario Outline: Colleague confirmed the secondary primary admin and sees the default blank check box against
  "The primary administrator you are creating will become your primary contact"
    Given I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<job_title>" in "jobTitle_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email2>" in "confirm_email_entry_field"
    And I entered "<phone_no>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<address3>" in "address_line3_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "next_button"
    When I click on "continue_btn"
    Then the "check_box_primary_admin" against the primary administrator you are creating will become your primary contact label is not selected

    Examples:
      | title | fname  | lname   | job_title  | email            | email2           | phone_no    | address1 | address2 | address3 | town  | country        | postcode |
      | Mr    | Nelson | Preston | job title1 | nptest4@test.com | nptest4@test.com | 02182326677 | address2 | address3 | address4 | town2 | United Kingdom | IG11 1JD |

  @cmpcbo358-02
  Scenario Outline: Colleague confirmed the secondary primary admin and selects the check box against
  "The primary administrator you are creating will become your primary contact"
    Given I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<job_title>" in "jobTitle_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email2>" in "confirm_email_entry_field"
    And I entered "<phone_no>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<address3>" in "address_line3_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "next_button"
    When I click on "continue_btn"
    Then I can select the "primary_admin_checkbox_label" against the primary administrator you are creating will become your primary label

    Examples:
      | title | fname  | lname   | job_title  | email            | email2           | phone_no    | address1 | address2 | address3 | town  | country        | postcode |
      | Mr    | Nelson | Preston | job title1 | nptest4@test.com | nptest4@test.com | 02182326677 | address2 | address3 | address4 | town2 | United Kingdom | IG11 1JD |

