@cmpcbo-1322 @client @createClient @regression @sprint20
Feature: CMPCBO-1322 - Cancel link confirmation pop up and navigation
  Cancel link - confirmation pop up and navigation - colleague journey

  @cmpcbo1322-01
  Scenario Outline: colleague captured the primary admin and second admin details and edit first primary administrator email details
    #First Admin
    Given I navigate to the "colleague_create_client_url" page
    When I entered "Volvo UK" in "client_name_entry_field"
    And I entered "8125489523" in "bp_id_entry_field"
    And I entered "5160708765" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "FA2 2DA" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And I could see "create_client_page_heading" as "Create a new client"
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
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "next_button"
    And I click on "popup_second_admin_confirmation"
    And I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_heading"
    #Secondary Admin
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Ben" in "firstName_entry_field"
    And I entered "Andraud" in "lastName_entry_field"
    And I entered "QEOne" in "jobTitle_entry_field"
    And I entered "bandraud0@bddtest.com" in "email_entry_field"
    And I entered "bandraud0@bddtest.com" in "confirm_email_entry_field"
    And I entered "07102341798" in "phone_entry_field"
    And I entered "Merrick" in "address_line1_entry_field"
    And I entered "London" in "address_line2_entry_field"
    And I entered "Church End" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "CB4 5RT" in "postcode_entry_field"
    And I click on "next_button"
    And  I could see "check_confirm_page_heading" as "<check_confirm_header>"
    When I click on "cc_edit_first_primary_admin"
    And I click on "first_plus_button"
    And I click on "first_edit_button"
    And I entered "<new_email>" in "email_entry_field"
    Then the "confirm_email_entry_field" is empty

    Examples:
      | title | fname | lname | job_title  | email             | email2            | phone_no    | address1 | address2 | address3 | town    | postcode | check_confirm_header | new_email             |

      | Mr    | Black | Brown | Consultant | testingP@test.com | testingP@test.com | 02182326677 | address4 | address5 | address6 | Barking | IG11 7NX | Check & confirm      | newemail1@testing.com |

  @cmpcbo1322-02
  Scenario Outline: colleague captured the primary admin and second admin details and edit secondary primary administrator email details
    #First Admin
    Given I navigate to the "colleague_create_client_url" page
    When I entered "Volvo UK" in "client_name_entry_field"
    And I entered "8125489523" in "bp_id_entry_field"
    And I entered "5160708765" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "FA2 2DA" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And I could see "create_client_page_heading" as "Create a new client"
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
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "next_button"
    And I click on "popup_second_admin_confirmation"
    And I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_heading"
    #Secondary Admin
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Silas" in "firstName_entry_field"
    And I entered "Paul" in "lastName_entry_field"
    And I entered "Director" in "jobTitle_entry_field"
    And I entered "silaspaul@bddtest.com" in "email_entry_field"
    And I entered "silaspaul@bddtest.com" in "confirm_email_entry_field"
    And I entered "07102341798" in "phone_entry_field"
    And I entered "Merrick" in "address_line1_entry_field"
    And I entered "London" in "address_line2_entry_field"
    And I entered "Church End" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "CB4 5RT" in "postcode_entry_field"
    And I click on "next_button"
    And  I could see "check_confirm_page_heading" as "<check_confirm_header>"
    When I click on "cc_edit_second_primary_admin"
    And I click on "second_plus_button"
    And I click on "second_edit_button"
    And I entered "<new_email>" in "email_entry_field"
    Then the "confirm_email_entry_field" is empty


    Examples:
      | title | fname | lname | job_title  | email             | email2            | phone_no    | address1 | address2 | address3 | town    | postcode | check_confirm_header | new_email             |

      | Mrs    | Mary | Wood | Consultant | marywood@test.com | marywood@test.com | 02182326677 | address4 | address5 | address6 | Barking | IG11 7NX | Check & confirm      | newemail2@testing.com |

