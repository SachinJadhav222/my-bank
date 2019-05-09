@cmpcbo-314 @client @createClientMVP @regression @sprint07
  Feature: CMPCBO-314 - Create workflow item (happy path)
  As a colleague after confirming the client details and generating the workflow item, the system should display the workflow
  ID on the screen with a successful message and if the process failed, an error message should be displayed.

  Background: Colleague chose CMP&P Service, navigated to the client details page and captured the primary admin details
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
    And I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "Bobby" in "firstName_entry_field"
    And I entered "Robinson" in "lastName_entry_field"
    And I entered "IT Consultant" in "jobTitle_entry_field"
    And I entered "testing01@test.com" in "email_entry_field"
    And I entered "testing01@test.com" in "confirm_email_entry_field"
    And I entered "02037089678" in "phone_entry_field"
    And I entered "address01" in "address_line1_entry_field"
    And I entered "address02" in "address_line2_entry_field"
    And I entered "address03" in "address_line3_entry_field"
    And I entered "Barking" in "city_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"

  @cmpcbo314-01
  Scenario Outline: colleague confirmed the client details and the system created the workflow item with the workflow id and workflow message
    And I can see the popup title for "second_primary_administrator_label" as "Second Primary Administrator"
    And I click on "confirm_button_client"
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<firstName>" in "firstName_entry_field"
    And I entered "<lastName>" in "lastName_entry_field"
    And I entered "<job_title>" in "jobTitle_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone_no>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<address3>" in "address_line3_entry_field"
    And I entered "<town>" in "city_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "next_button"
    And I should see "Create a new client" as "create_client_page_heading"
    And I click on "next_button"
    Then I should see the "cc_workflow_header" as "Workflow created: Create client request"
    And I could see "cc_workflow_message"


    Examples:
      | title | firstName | lastName | job_title  | email              |  phone_no    | address1 | address2 | address3 | town    | country        | postcode |
      | Mr    | Black     | Brown    | Consultant | testing02@test.com |  02182326677 | address4 | address5 | address6 | Barking | United Kingdom | IG11 1JD |

