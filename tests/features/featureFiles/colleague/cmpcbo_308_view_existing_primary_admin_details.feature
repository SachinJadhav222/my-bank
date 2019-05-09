@cmpcbo-308 @client @createClientMVP @regression @sprint06
Feature: CMPCBO-308 - View Existing Primary Admin Details
  As a Colleague, after confirming the need for second primary admin, I should be able to
  see the existing Primary Administrator page and an empty second primary admin form to capture user's details

  @cmpcbo308-01
  Scenario Outline: Colleague confirmed the secondary primary admin and sees the create primary admin page
  with the existing primary admin label and empty primary admin form
    Given I navigate to the "colleague_create_client_url" page
    When I entered "ASDA UK" in "client_name_entry_field"
    And I entered "1111111112" in "bp_id_entry_field"
    And I entered "1122334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "SS1 1QW" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
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
    And I can see the popup title for "second_primary_administrator_label" as "Second Primary Administrator"
    And I click on "confirm_button_client"
    And I see an "<existing_primary_admin>" as "existing_primary_admin_details"
    Then I should see Page Heading "<second_primary_admin_details_heading>" as "second_primary_admin_details_heading"


    Examples:
      | title | fname      | lname     | job_title  | email          | email2         | phone_no    | address1 | address2 | address3 | town  | country        | postcode | existing_primary_admin         | second_primary_admin_details_heading |
      | Mr    | Firstname3 | LastName3 | job title1 | test4@test.com | test4@test.com | 02182326677 | address2 | address3 | address4 | town2 | United Kingdom | IG11 1JD | Existing primary administrator | Second primary administrator details |

