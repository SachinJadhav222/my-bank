@cmpcbo-448 @client @createClientMVP @regression @sprint17
Feature: CMPCBO-448 - Email Address Validation Primary & Secondary Admin Setup

  @cmpcbo448-01
  Scenario Outline: Email Address validation while entering Admin details
    Given I navigate to the "colleague_create_client_url" page
    Then I should see Page Heading "Client details" at "create_client_page_heading1"
    When I entered "Volvo UK" in "client_name_entry_field"
    And I entered "8025489523" in "bp_id_entry_field"
    And I entered "11223344" in "cmd_id_entry_field"
    And I entered "Address1" in "address_line1_entry_field"
    And I entered "Address2" in "address_line2_entry_field"
    And I entered "New Town Primary" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    And I click on "next_button"
    Then I should see Page Heading "Select service package" as "select_service_page_heading"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    Then I should see Page Heading "Primary admin" as "primary_admin_page_heading"
     #primary admin
    And I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "DanielPrimary" in "firstName_entry_field"
    And I entered "JonesPrimary" in "lastName_entry_field"
    And I entered "QE Primary" in "jobTitle_entry_field"
    And I entered "<primary_email>" in "email_entry_field"
    And I entered "<primary_email>" in "confirm_email_entry_field"
    And I entered "098765433111" in "phone_entry_field"
    And I entered "2FA Primary" in "address_line1_entry_field"
    And I entered "London Primary" in "address_line2_entry_field"
    And I entered "New Town Primary" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    And I click on "next_button"
    And I click on "popup_second_admin_confirmation"
    Then I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_heading"
    #Secondary admin
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "DanielSecondary" in "firstName_entry_field"
    And I entered "JonesSecondary" in "lastName_entry_field"
    And I entered "QE Secondary" in "jobTitle_entry_field"
    And I entered "<primary_email>" in "email_entry_field"
    Then I should see Error Message "<error_message>" displayed at "duplicate_email_error_message"

    Examples:
      | primary_email    | error_message                                                                                                                                                   |
      | primary@test.com | This email address is already being used by another Primary Administrator for this Client. Please enter an alternative email address and re-submit the details. |


  @cmpcbo448-02
  Scenario Outline: Email Address validation Edit First Primary Admin
    Given I navigate to the "colleague_create_client_url" page
    Then I should see Page Heading "Client details" at "create_client_page_heading1"
    When I entered "Volvo UK" in "client_name_entry_field"
    And I entered "8025489523" in "bp_id_entry_field"
    And I entered "11223344" in "cmd_id_entry_field"
    And I entered "Address1" in "address_line1_entry_field"
    And I entered "Address2" in "address_line2_entry_field"
    And I entered "New Town Primary" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    And I click on "next_button"
    Then I should see Page Heading "Select service package" as "select_service_page_heading"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    Then I should see Page Heading "Primary admin" as "primary_admin_page_heading"
     #primary admin
    And I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "DanielPrimary" in "firstName_entry_field"
    And I entered "JonesPrimary" in "lastName_entry_field"
    And I entered "QE Primary" in "jobTitle_entry_field"
    And I entered "<primary_email>" in "email_entry_field"
    And I entered "<primary_email>" in "confirm_email_entry_field"
    And I entered "098765433111" in "phone_entry_field"
    And I entered "2FA Primary" in "address_line1_entry_field"
    And I entered "London Primary" in "address_line2_entry_field"
    And I entered "New Town Primary" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    And I click on "next_button"
    And I click on "popup_second_admin_confirmation"
    Then I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_heading"
    #Secondary admin
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "DanielSecondary" in "firstName_entry_field"
    And I entered "JonesSecondary" in "lastName_entry_field"
    And I entered "QE Secondary" in "jobTitle_entry_field"
    And I entered "<secondary_email>" in "email_entry_field"
    And I entered "<secondary_email>" in "confirm_email_entry_field"
    And I entered "098765433222" in "phone_entry_field"
    And I entered "2FA Secondary" in "address_line1_entry_field"
    And I entered "London Road Secondary" in "address_line2_entry_field"
    And I entered "New Town Secondary" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    And I click on "next_button"
    Then I should see Page Heading "Check & confirm" as "check_confirm_page_heading"
    And I click on "cc_edit_first_primary_admin"
    Then I should see Page Heading "Primary admin" as "primary_admin_page_heading"
    When I click on "first_plus_button"
    Then I should see Sub Heading "First primary administrator details" at "first_primary_admin_details_label"
    And I click on "first_edit_button"
    And I entered "<secondary_email>" in "email_entry_field"
    Then I should see Error Message "<error_message>" displayed at "duplicate_email_error_message"

    Examples:
      | primary_email    | secondary_email    | error_message                                                                                                                                                   |
      | primary@test.com | secondary@test.com | This email address is already being used by another Primary Administrator for this Client. Please enter an alternative email address and re-submit the details. |


  @cmpcbo448-03
  Scenario Outline: Email Address validation Edit Secondary Admin
    Given I navigate to the "colleague_create_client_url" page
    Then I should see Page Heading "Client details" at "create_client_page_heading1"
    When I entered "Volvo UK" in "client_name_entry_field"
    And I entered "8025489523" in "bp_id_entry_field"
    And I entered "11223344" in "cmd_id_entry_field"
    And I entered "Address1" in "address_line1_entry_field"
    And I entered "Address2" in "address_line2_entry_field"
    And I entered "New Town Primary" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    And I click on "next_button"
    Then I should see Page Heading "Select service package" as "select_service_page_heading"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    Then I should see Page Heading "Primary admin" as "primary_admin_page_heading"
     #primary admin
    And I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "DanielPrimary" in "firstName_entry_field"
    And I entered "JonesPrimary" in "lastName_entry_field"
    And I entered "QE Primary" in "jobTitle_entry_field"
    And I entered "<primary_email>" in "email_entry_field"
    And I entered "<primary_email>" in "confirm_email_entry_field"
    And I entered "098765433111" in "phone_entry_field"
    And I entered "2FA Primary" in "address_line1_entry_field"
    And I entered "London Primary" in "address_line2_entry_field"
    And I entered "New Town Primary" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    And I click on "next_button"
    And I click on "popup_second_admin_confirmation"
    Then I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_heading"
    #Secondary admin
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "DanielSecondary" in "firstName_entry_field"
    And I entered "JonesSecondary" in "lastName_entry_field"
    And I entered "QE Secondary" in "jobTitle_entry_field"
    And I entered "<secondary_email>" in "email_entry_field"
    And I entered "<secondary_email>" in "confirm_email_entry_field"
    And I entered "098765433222" in "phone_entry_field"
    And I entered "2FA Secondary" in "address_line1_entry_field"
    And I entered "London Road Secondary" in "address_line2_entry_field"
    And I entered "New Town Secondary" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    And I click on "next_button"
    Then I should see Page Heading "Check & confirm" as "check_confirm_page_heading"
    And I click on "cc_edit_second_primary_admin"
    Then I should see Page Heading "Primary admin" as "primary_admin_page_heading"
    When I click on "second_plus_button"
    Then I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_label"
    And I click on "second_edit_button"
    And I entered "<primary_email>" in "email_entry_field"
    Then I should see Error Message "<error_message>" displayed at "duplicate_email_error_message"

    Examples:
      | primary_email    | secondary_email    | error_message                                                                                                                                                   |
      | primary@test.com | secondary@test.com | This email address is already being used by another Primary Administrator for this Client. Please enter an alternative email address and re-submit the details. |





