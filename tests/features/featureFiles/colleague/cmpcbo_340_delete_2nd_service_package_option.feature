@cmpcbo-340 @client @createClientMVP @regression @sprint05
Feature: CMPCBO-340 - Delete second service package option

  Background: Colleague chose CMP&P Service and navigated to the client details page
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

  @cmpcbo340-01
  Scenario Outline: Colleague search for a client record and navigate to the service packages page
    Then the "service_packages_page_label" is displayed as “<service_package_title>”
    Examples:
      | service_package_title |
      | Service packages      |

  @cmpcbo340-02
  Scenario Outline: Colleague search for a client record and able to assign a service package to the client
    And I select by Index "1" from the dropdown "service_package_name"
    And I can see the "service_package_description1" as "<service_package_description>"
    Then I should see the "next_button" is Activated
    Examples:
      | service_package_description                                                                                                                 |
      | Gives access to Accounts (By Entity, Currency & Group), Transaction History, Reporting (including Legal Bank Statements) and Administration |

  @cmpcbo340-03
  Scenario: Colleague search for a client record, assigned a service package and navigate to the next page in the flow
    And I select by Index "1" from the dropdown "service_package_name"
    Then I click on "next_button"
    Then I should see "Create a new client" as "create_client_page_heading"

  @cmpcbo340-04
  Scenario: Colleague search for a client record, assigned a service package and navigated back to the client details page
    And I select by Index "1" from the dropdown "service_package_name"
    And I navigate back to the previous page by selecting the "previous_button"
    Then I should see Page Heading "Create a new client" at "create_client_page_heading"


