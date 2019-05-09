@cmpcbo-422 @client @createClientMVP @regression @sprint09
Feature: CMPCBO-422 - Colleague User navigation from the CWA application back to Colleague Portal

  Background: Colleague chose CMP&P Service, navigated to the client details page and captured the client details
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

  @cmpcbo422-01
  Scenario Outline: colleague returned back to the CBO colleague portal homepage after creating and confirming the workflow item
    Given I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "Bobby" in "firstName_entry_field"
    And I entered "Robinson" in "lastName_entry_field"
    And I entered "IT Consultant" in "jobTitle_entry_field"
    And I entered "testing01@test.com" in "email_entry_field"
    And I entered "testing01@test.com" in "confirm_email_entry_field"
    And I entered "02037089678" in "phone_entry_field"
    And I entered "address01" in "address_line1_entry_field"
    And I entered "address02" in "address_line2_entry_field"
    And I entered "address03" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    And I click on "popup_second_admin_confirmation"
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<firstName>" in "firstName_entry_field"
    And I entered "<lastName>" in "lastName_entry_field"
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
    And I should see "Create a new client" as "create_client_page_heading"
    When I click on "cancel_button"
    And I click on "create_client_yes_cancel_button"
    Then I should see a "mock_landing_page" as "<mock_landing_page>"


    Examples:
      | title | firstName | lastName | job_title  | email              | email2             | phone_no    | address1 | address2 | address3 | town    | country        | postcode | mock_landing_page |
      | Mr    | Black     | Brown    | Consultant | testing02@test.com | testing02@test.com | 02182326677 | address4 | address5 | address6 | Barking | United Kingdom | IG11 1JD | Mock Landing Page |

  @cmpcbo422-02
  Scenario Outline: colleague cancel the workflow item journey and returned back to the CBO colleague portal homepage
    Given I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "Bobby" in "firstName_entry_field"
    And I entered "Robinson" in "lastName_entry_field"
    And I entered "IT Consultant" in "jobTitle_entry_field"
    And I entered "testing01@test.com" in "email_entry_field"
    And I entered "testing01@test.com" in "confirm_email_entry_field"
    And I entered "02037089678" in "phone_entry_field"
    And I entered "address01" in "address_line1_entry_field"
    And I entered "address02" in "address_line2_entry_field"
    And I entered "address03" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    And I click on "popup_second_admin_confirmation"
    When I click on "cancel_button"
    And I click on "create_client_yes_cancel_button"
    Then I should see a "mock_landing_page" as "<mock_landing_page>"

    Examples:

      | mock_landing_page |
      | Mock Landing Page |