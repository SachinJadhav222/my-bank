@cmpcbo-37 @client @createClientMVP @regression @sprint07
Feature: CMPCBO-37 - Check and Confirm Client
  As a colleague when setting up the Client agreement I am able to view all details entered in the
  Create Client process prior to submitting for approval.
  I am also able to see the client details from the summary page on check and confirm page.

  Background: Colleague navigated to the create client page
    Given I navigate to the "colleague_create_client_url" page
    And I entered "Volvo UK" in "client_name_entry_field"
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

  @cmpcbo37-01
  Scenario Outline: colleague captured the primary admin and second admin details and confirmed the details in read only mode
  on the Check and Confirm page that includes the following: Company details, Client settings, Service package, first primary administrator details
  second primary administrator details and the edit button.
    #First Admin
    When I could see "create_client_page_heading" as "Create a new client"
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
    Then I should see the "create_client_page_heading" as "Create a new client"
    #Client details
    And I should see the "cc_client_details_label" is visible
    And I should see the "cc_client_name_label" is visible
    And I should see the "cc_edit_client_details" is visible
    And I should see the "cc_edit_service_package" is visible
    And I should see the "cc_edit_first_primary_admin" is visible
    And I should see the "cc_edit_second_primary_admin" is visible
    And I should see the "cc_bpid_label" is visible
    And I should see the "cc_cmdid_label" is visible
    And I should see the "cc_client_details_label" is visible
    And I should see the "cc_client_name_label" is visible
    And I should see the "cc_client_address_label" is visible
    And I should see the "cc_client_settings_label" is visible
    And I should see the "cc_days_before_password_expire_label" is visible
    And I should see the "cc_service_package_label" is visible
    And I should see the "cc_first_primary_admin_details_label" is visible
    And I should see the "cc_second_primary_admin_details_label" is visible
    And I should see a "cc_client_name_cc" as "Volvo UK"
    And I should see a "cc_bpid_cc" as "8125489523"
    And I should see a "cc_cmdid_cc" as "5160708765"
    And I should see a "cc_clint_postcode_cc" as "FA2 2DA"
    And I should see a "cc_clint_country_cc" as "United Kingdom"
    And I should see a "cc_service_package_cc" as "Accounts, Balances and Reporting"
    And I should see a "cc_first_primary_admin_name" as "Mr Black Brown"
    And I should see a "cc_first_primary_admin_email" as "testingP@test.com"
    And I should see a "cc_first_primary_phone_number" as "02182326677"
    And I should see a "cc_first_primary_country" as "United Kingdom"
    And I should see a "cc_second_primary_admin_name" as "Dr Ben Andraud"
    And I should see a "cc_second_primary_admin_email" as "bandraud0@bddtest.com"
    And I should see a "cc_second_primary_phone_number" as "07102341798"
    And I should see a "cc_second_primary_country" as "United Kingdom"

    Examples:
      | title | fname | lname | job_title  | email             | email2            | phone_no    | address1 | address2 | address3 | town    | country        | postcode |
      | Mr    | Black | Brown | Consultant | testingP@test.com | testingP@test.com | 02182326677 | address4 | address5 | address6 | Barking | United Kingdom | IG11 7NX |

