@cmpcbo-38 @client @createClientMVP @regression @sprint02
Feature: CMPCBO-38 - Select Service Packages
  As a Colleague
  I want to assign service package

  @cmpcbo38-01
  Scenario Outline: Verify Service Package tool tip displayed and Text
    Given I navigate to the "colleague_create_client_url" page
    When I entered "Legros LLC" in "client_name_entry_field"
    And I entered "5000000000" in "bp_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "SS1 1QE" in "postcode_entry_field"
    And I entered "6000000000" in "cmd_id_entry_field"
    And I click on "next_button"
    And I move mouse over Tooltip "service_package_tooltip"
    Then I should see Tooltip text "<tooltip_text>" displayed
    Examples:
      | tooltip_text                                                                   |
      | The menu lists the service packages available. Select only one for your client |

  @cmpcbo38-02
  Scenario Outline: Colleague search for a client record and navigate to the service packages page
    Given I navigate to the "colleague_create_client_url" page
    When I entered "Legros LLC" in "client_name_entry_field"
    And I entered "5000000000" in "bp_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "SS1 1QE" in "postcode_entry_field"
    And I entered "6000000000" in "cmd_id_entry_field"
    And I click on "next_button"
    Then the "service_packages_page_label" is displayed as "<service_package_title>"
    Examples:
      | service_package_title |
      | Service packages      |

  @cmpcbo38-03
  Scenario Outline: Colleague search for a client record and able to assign a service package to the client
    Given I navigate to the "colleague_create_client_url" page
    When I entered "Legros LLC" in "client_name_entry_field"
    And I entered "5000000000" in "bp_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "SS1 1QE" in "postcode_entry_field"
    And I entered "6000000000" in "cmd_id_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    Then I can see the "service_package_description1" as "<service_package_description>"
    And I should see the "next_button" is Activated

    Examples:
      | service_package_description                                                                                                                 |
      | Gives access to Accounts (By Entity, Currency & Group), Transaction History, Reporting (including Legal Bank Statements) and Administration |

  @cmpcbo38-04
  Scenario: Colleague search for a client record, assigned a service package and navigate to the next page in the flow
    Given I navigate to the "colleague_create_client_url" page
    When I entered "Legros LLC" in "client_name_entry_field"
    And I entered "5000000000" in "bp_id_entry_field"
    And I entered "6000000000" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "SS1 1QE" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    Then I should see the "create_client_page_heading" as "Create a new client"

  @cmpcbo38-05
  Scenario: Colleague search for a client record, assigned a service package and navigated back to the client details page
    Given I navigate to the "colleague_create_client_url" page
    When I entered "Legros LLC" in "client_name_entry_field"
    And I entered "5000000000" in "bp_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "SS1 1QE" in "postcode_entry_field"
    And I entered "6000000000" in "cmd_id_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I navigate back to the previous page by selecting the "previous_button"
    Then I should see Page Heading "Create a new client" at "create_client_page_heading"

