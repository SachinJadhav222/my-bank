@cmpcbo-39 @client @createClientMVP @regression @sprint03
Feature: CMPCBO-39 - Set (BASIC) Password Parameter and Admin Set Up
  As a Colleague
  I want to Set Password Parameters

  @cmpcbo39-01
  Scenario Outline: Colleague searched for a client record and updated the password
  expiry date with a valid value for the client
    Given I navigate to the "colleague_create_client_url" page
    When I navigate to the "colleague_create_client_url" page
    And I entered "JAGUAR UK" in "client_name_entry_field"
    And I entered "1211111111" in "bp_id_entry_field"
    And I entered "1022334455" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "SS1 2QE" in "postcode_entry_field"
    And I set the "password_expiry_entry_field" to a valid value as “<valid_password_expiry_value>”
    Then I should see the "next_button" is Activated

    Examples:
      | valid_password_expiry_value |
      | 60                          |

  @cmpcbo39-02
  Scenario Outline: Colleague searched for a client record and updated the password
  expiry date with an invalid value for the client
    Given I navigate to the "colleague_create_client_url" page
    When I entered "JAGUAR UK" in "client_name_entry_field"
    And I entered "1211111111" in "bp_id_entry_field"
    And I entered "1022334455" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "SS1 2QE" in "postcode_entry_field"
    And the "password_expiry_entry_field" is defaulted to “<default_password_expiry_days>”
    And I set the "password_expiry_entry_field" to an invalid value as “<invalid_password_expiry_days>”
    Then the "next_button" is disabled

    Examples:
      | default_password_expiry_days | invalid_password_expiry_days |
      | 90                           | 29                           |
      | 90                           | 91                           |

  @cmpcbo39-03
  Scenario: Colleague search for a client record and navigate to the primary admin page
    Given I navigate to the "colleague_create_client_url" page
    When I entered "JAGUAR UK" in "client_name_entry_field"
    And I entered "1211111111" in "bp_id_entry_field"
    And I entered "1022334455" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "SS1 2QE" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    Then I should see Page Heading "Create a new client" at "create_client_page_heading"


