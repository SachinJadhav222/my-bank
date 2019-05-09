@cmpcbo-305 @client @createClientMVP @regression @sprint05
Feature: CMPCBO-305 - Assign Audit Roles
  As a Colleague
  I would like to assign audit roles

  @cmpcbo305-01
  Scenario Outline: While I am on primary administrator page with the assigned audit role set to 'Yes' by default, I should be able to reset it to 'No'
    Given I navigate to the "colleague_create_client_url" page
    When I entered "ASDA UK" in "client_name_entry_field"
    And I entered "1111111112" in "bp_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "SS1 1QW" in "postcode_entry_field"
    And I entered "1122334465" in "cmd_id_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<job_title>" in "jobTitle_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email2>" in "email_entry_field"
    And I entered "<phone_no>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<address3>" in "address_line3_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "audit_no_radio_button"


    Examples:
      | title | fname | lname    | job_title | email          | email2         | phone_no    | address1 | address2 | address3 | town  | country        | postcode |
      | Mr    | Mike  | LastName | job title | test1@test.com | test1@test.com | 02182326677 | address1 | address2 | address3 | town1 | United Kingdom | IG11 7NX |

  @cmpcbo305-02
  Scenario Outline: While I am on primary administrator page with the assigned audit role set to 'Yes' by default, I should be able to reset it to 'No'
    Given I navigate to the "colleague_create_client_url" page
    When I entered "ASDA UK" in "client_name_entry_field"
    And I entered "1111111112" in "bp_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "SS1 1QW" in "postcode_entry_field"
    And I entered "1122334465" in "cmd_id_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<job_title>" in "jobTitle_entry_field"
    And I entered "<email1>" in "email_entry_field"
    And I entered "<email3>" in "email_entry_field"
    And I entered "<phone_no>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<address3>" in "address_line3_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "audit_yes_radio_button"

    Examples:
      | title | fname | lname    | job_title | email1         | email3         | phone_no    | address1 | address2 | address3 | town  | country        | postcode |
      | Mr    | Mike  | LastName | job title | test1@test.com | test1@test.com | 02182326677 | address1 | address2 | address3 | town1 | United Kingdom | IG11 6NX |










