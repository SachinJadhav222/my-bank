@cmpcbo-40 @client @createClientMVP @regression @sprint04
Feature: CMPCBO-40 - Complete admin user details form validation
  As a Colleague
  I want to check the mandatory field

  @cmpcbo40-01
  Scenario: Primary Contact CheckBox
    When I navigate to the "colleague_create_client_url" page
    And I entered "VOLVO UK" in "client_name_entry_field"
    And I entered "1311111111" in "bp_id_entry_field"
    And I entered "1122334455" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And  I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "RM6 8PD" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And I scroll to the element "primary_admin_checkbox_label"
    Then I should see "primary_admin_checkbox_label" is Selected

  @cmpcbo40-02
  Scenario Outline: Mandatory Filed Left Blank and clicked Outside to See Error
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLVO UK" in "client_name_entry_field"
    And I entered "1311111111" in "bp_id_entry_field"
    And I entered "1122334455" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And  I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "RM6 8PD" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And I click on Mandatory Field "<mandatory_field>"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Error Message "<error_message>" displayed at "<error_message_field>"
    Examples:
      | mandatory_field           | error_message                               | error_message_field         |
      | title_entry_field         | Choose the user’s title                     | title_error_message         |
      | firstName_entry_field     | Enter the user’s first name                 | firstName_error_message     |
      | lastName_entry_field      | Enter the user’s last name                  | lastName_error_message      |
      | email_entry_field         | Enter the user’s email address              | email_error_message         |
      | confirm_email_entry_field | Enter the user’s correct email address      | confirm_email_error_message |
      | phone_entry_field         | Enter the user’s telephone number           | phone_error_message         |
      | address_line1_entry_field | Enter the first line of the user’s address  | address_line1_error_message |
      | address_line2_entry_field | Enter the second line of the user’s address | address_line2_error_message |
      | town_entry_field          | Enter the user’s town or city               | town_error_message          |
      | country_entry_field       | Enter the user’s country                    | country_error_message       |

  @cmpcbo40-09
  Scenario Outline: Mandatory Filed Left Blank and clicked Outside to See Error
    Given I navigate to the "colleague_create_client_url" page
    And I click on Mandatory Field "<mandatory_field>"
    And I click out of the Box on "create_client_page_heading1"
    Then I should see Error Message "<error_message>" displayed at "<error_message_field>"
    Examples:
      | mandatory_field         | error_message                   | error_message_field       |
      | client_name_entry_field | Enter the Client name           | client_name_error_message |
      | bp_id_entry_field       | Enter the 10 digit numeric code | bp_id_error_message       |
      | cmd_id_entry_field      | Enter the CMD ID                | cmd_id_error_message      |

  @cmpcbo40-03
  Scenario: Title-Invalid or Blank Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLVO UK" in "client_name_entry_field"
    And I entered "1311111111" in "bp_id_entry_field"
    And I entered "1122334455" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And  I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "RM6 8PD" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And I select by Index "0" from the dropdown "title_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "title_entry_field" is Highlighted RED

  @cmpcbo40-04
  Scenario Outline: Title-Valid entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLVO UK" in "client_name_entry_field"
    And I entered "1311111111" in "bp_id_entry_field"
    And I entered "1122334455" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And  I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "RM6 8PD" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And I select by Text "<salutation_title>" from the dropdown "title_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "title_entry_field" is Highlighted GREEN
    Examples:
      | salutation_title |
      | Mr               |
      | Mrs              |
      | Miss             |
      | Ms               |
      | Dr               |
      | Professor        |
      | Lord             |
      | Lady             |
      | Honourable       |
      | Dame             |
      | Sir              |
      | Major            |
      | Sergeant         |
      | Commander        |
      | Brigadier        |
      | Reverend         |
      | Father           |


  @cmpcbo40-05
  Scenario Outline: Country -Valid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLVO UK" in "client_name_entry_field"
    And I entered "1311111111" in "bp_id_entry_field"
    And I entered "1122334455" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And  I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "RM6 8PD" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "country_entry_field" is Highlighted GREEN
    Examples:
      | country        |
      | United Kingdom |
      | Guernsey       |
      | Jersey         |
      | Isle of Man    |

  @cmpcbo40-06
  Scenario Outline: Post Code Field Displayed
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLVO UK" in "client_name_entry_field"
    And I entered "1311111111" in "bp_id_entry_field"
    And I entered "1122334455" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And  I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "RM6 8PD" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    Then I should see "postcode_entry_field" is visible & displayed
    Examples:
      | country        |
      | United Kingdom |

  @cmpcbo40-07
  Scenario Outline: Post Code Validation for Valid Postcode
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLVO UK" in "client_name_entry_field"
    And I entered "1311111111" in "bp_id_entry_field"
    And I entered "1122334455" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And  I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "RM6 8PD" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "postcode_entry_field" is Highlighted GREEN
    Examples:
      | country        | postcode |
      | United Kingdom | IG2 7RH  |

  @cmpcbo40-08
  Scenario: Complete Primary User Details form
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLVO UK" in "client_name_entry_field"
    And I entered "1311111111" in "bp_id_entry_field"
    And I entered "1122334455" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And  I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "RM6 8PD" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    Then I select by Text "Mr" from the dropdown "title_entry_field"
    Then I entered "Daniel" in "firstName_entry_field"
    Then I entered "Jones" in "lastName_entry_field"
    Then I entered "QE" in "jobTitle_entry_field"
    Then I entered "test@test.com" in "email_entry_field"
    Then I entered "test@test.com" in "confirm_email_entry_field"
    Then I entered "098765433" in "phone_entry_field"
    Then I entered "2FA" in "address_line1_entry_field"
    Then I entered "London" in "address_line2_entry_field"
    Then I entered "Liverpool Street" in "town_entry_field"
    Then I select by Text "United Kingdom" from the dropdown "country_entry_field"
    Then I entered "FA2 2FA" in "postcode_entry_field"
    And I click on "next_button"
    Then I click on "popup_second_admin_confirmation"
    Then I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_heading"
