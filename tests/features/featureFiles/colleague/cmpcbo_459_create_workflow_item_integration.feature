@cmpcbo-459 @client @createClientMVP @regression @sprint13
Feature: CMPCBO-459 - Create workflow item -Integration
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
    And I can see the popup title for "second_primary_administrator_label" as "Second Primary Administrator"
    And I click on "confirm_button_client"

  @cmpcbo459-01
  Scenario Outline: colleague confirmed the client details and the system created the workflow item with the workflow id and workflow message
    And I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "Tracy" in "firstName_entry_field"
    And I entered "Robinson" in "lastName_entry_field"
    And I entered "IT Consultant" in "jobTitle_entry_field"
    And I entered "atesting@test.com" in "email_entry_field"
    And I entered "atesting@test.com" in "confirm_email_entry_field"
    And I entered "02037189678" in "phone_entry_field"
    And I entered "address01" in "address_line1_entry_field"
    And I entered "address02" in "address_line2_entry_field"
    And I entered "address03" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    Then I should see Page Heading "Create a new client" at "create_client_page_heading"
    Then I should see User Name as "Mr","Bobby","Robinson" at "cc_first_primary_admin_name"
    When I click on "next_button"
    Then I should see a "workflow_popup_heading" as "Workflow created: Create client request"
    Then I should see "<workflow_header>" as "cc_workflow_header"
    And I could see "cc_workflow_message"

    Examples:
      | workflow_header                         |
      | Workflow created: Create client request |







