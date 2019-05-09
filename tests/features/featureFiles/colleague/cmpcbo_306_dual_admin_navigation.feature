@cmpcbo-306 @client @createClientMVP @regression @sprint05
Feature: CMPCBO-306 - Dual admin navigation
  As a Colleague
  I would like to assign audit roles

  @cmpcbo306-01
  Scenario Outline: Colleague is able to continue to capture the user's details and create a second primary administrator
    Given I navigate to the "colleague_create_client_url" page
    When I entered "ASTON MARTINS UK" in "client_name_entry_field"
    And I entered "1111111113" in "bp_id_entry_field"
    And I entered "testaddress2" in "address_line1_entry_field"
    And I entered "testaddress3" in "address_line2_entry_field"
    And I entered "testaddress4" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "KT12 1QW" in "postcode_entry_field"
    And I entered "1122334423" in "cmd_id_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "Firstname1" in "firstName_entry_field"
    And I entered "LastName1" in "lastName_entry_field"
    And I entered "job title" in "jobTitle_entry_field"
    And I entered "ftest2@test.com" in "email_entry_field"
    And I entered "ftest2@test.com" in "confirm_email_entry_field"
    And I entered "02182326644" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "town1" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1JD" in "postcode_entry_field"
    And I click on "next_button"
    And I should see second primary admin message "admin_popup_message" displayed as "<Admin_message>"
    And I can see the popup title for "second_primary_administrator_label" as "<second_primary_admin>"
    And I click on "confirm_button_client"
    And I could see "primary_admin_details_heading" as "Second primary administrator details"
    And I select by Text "<title>" from the dropdown "title_entry_field"
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
    Then I should see "Create a new client" as "create_client_page_heading"

    Examples:
      | title | fname      | lname     | job_title  | email          | email2         | phone_no    | address1 | address2 | address3 | town  | country        | postcode | Admin_message                                                                               | second_primary_admin         |
      | Mr    | FirstName3 | LastName3 | job title1 | test4@test.com | test4@test.com | 02182326677 | address2 | address3 | address4 | town2 | United Kingdom | IG11 1JD | For clients with dual administration, at least two primary administrators must be assigned. | Second Primary Administrator |






