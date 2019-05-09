@cmpcbo-688 @client @createClientMVP @regression @sprint15
Feature: CMPCBO-688 - Alternative approach to enter BPID and Name and Address
  In case colleague do not have the SAP API on BPID, colleague need to have an alternative way of capturing
  information for create client


  @cmpcbo688-01
  Scenario Outline: While creating a new client, when I navigated to the create client page, I should see the client details.
    Given I navigate to the "colleague_create_client_url" page
    When I am on the "create_client_page_heading" displayed as "<create_client_page_title>"
    Then I should see "client_name_field_label" displayed as "<client_name_label>"
    And I should see "bp_id_field_label" displayed as "<bpid_label>"
    And I should see "client_address_field_label1" displayed as "<client_address_label1>"
    And I should see "client_address_field_label2" displayed as "<client_address_label2>"
    And I should see "client_address_field_label3" displayed as "<client_address_label3>"
    And I should see "cmd_id_field_label" displayed as "<cmdid_label>"
    And I should see "city_field_label" displayed as "<city_label>"
    And I should see "country_field_label" displayed as "<country_label>"

    Examples:
      | create_client_page_title | client_name_label | bpid_label | client_address_label1 | client_address_label2 | client_address_label3 | city_label  | country_label | cmdid_label |
      | Create a new client      | Client name       | BP ID      | Address line 1        | Address line 2        | Address line 3        | Town / city | Country       | CMD ID      |

  @cmpcbo688-02
  Scenario Outline: While creating a new user, when the mandatory client name entry field is left blank an error message is displayed.
    Given I navigate to the "colleague_create_client_url" page
    When I set the "client_name_entry_field" empty by clicking on "client_name_field_label"
    Then I should see "client_name_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message        |
      | Enter the Client name |

  @cmpcbo688-03
  Scenario Outline: While creating a new user, when the mandatory BP ID entry field is left blank an error message is displayed.
    Given I navigate to the "colleague_create_client_url" page
    When I set the "bp_id_entry_field" empty by clicking on "client_name_field_label"
    Then I should see "bp_id_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message     |
      | Enter the 10 digit numeric code |

  @cmpcbo688-04
  Scenario Outline: While creating a new user, when the mandatory address line 1 entry field is left blank an error message is displayed.
    Given I navigate to the "colleague_create_client_url" page
    When I set the "client_address_entry_field1" empty by clicking on "client_address_field_label1"
    Then I should see "client_address1_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message                |
      | Enter the first line of the user’s address |

  @cmpcbo688-05
  Scenario Outline: While creating a new user, when the mandatory address line 2 entry field is left blank an error message is displayed.
    Given I navigate to the "colleague_create_client_url" page
    When I set the "client_address_entry_field2" empty by clicking on "client_address_field_label2"
    Then I should see "client_address2_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message                 |
      | Enter the second line of the user’s address |

  @cmpcbo688-06
  Scenario Outline: While creating a new user, when the mandatory city entry field is left blank an error message is displayed.
    Given I navigate to the "colleague_create_client_url" page
    When I set the "city_entry_field" empty by clicking on "city_field_label"
    Then I should see "city_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message   |
      | Enter the user’s town or city |

  @cmpcbo688-07
  Scenario Outline: While creating a new user, when the mandatory address line 1 entry field is left blank an error message is displayed.
    Given I navigate to the "colleague_create_client_url" page
    When I set the "address_line1_entry_field" empty by clicking on "address_line2_entry_field"
    Then I should see "address_line1_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message                |
      | Enter the first line of the user’s address |

  @cmpcbo688-08
  Scenario Outline: While creating a new user, when the mandatory address line 2 entry field is left blank an error message is displayed.
    Given I navigate to the "colleague_create_client_url" page
    When I set the "address_line2_entry_field" empty by clicking on "address_line3_entry_field"
    Then I should see "address_line2_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message                 |
      | Enter the second line of the user’s address |

  @cmpcbo688-09
  Scenario Outline: While creating a new user, when the mandatory town entry field is left blank an error message is displayed.
    Given I navigate to the "colleague_create_client_url" page
    When I set the "town_entry_field" empty by clicking on "country_entry_field"
    Then I should see "town_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message   |
      | Enter the user’s town or city |

  @cmpcbo688-10,
  Scenario Outline: While creating a new user, when the mandatory country entry field is left blank an error message is displayed.
    Given I navigate to the "colleague_create_client_url" page
    When I set the "country_entry_field" empty by clicking on "town_entry_field"
    Then I should see "country_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message |
      | Enter the user’s country    |

  @cmpcbo688-11
  Scenario Outline: While creating a new user, when the country is selected as UK and the mandatory postcode entry field is left blank an error message is displayed.
    Given I navigate to the "colleague_create_client_url" page
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I set the "postcode_entry_field" empty by clicking on "town_entry_field"
    Then I should see "postcode_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message | country        |
      | Enter the user’s postcode   | United Kingdom |
      | Enter the user’s postcode   | Guernsey       |
      | Enter the user’s postcode   | Jersey         |


  @cmpcbo688-12
  Scenario Outline: While creating a new user, when the mandatory CMD ID entry field is left blank an error message is displayed.
    Given I navigate to the "colleague_create_client_url" page
    When I set the "cmd_id_entry_field" empty by clicking on "cmd_id_field_label"
    Then I should see "cmd_id_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message        |
      | Enter the CMD ID |

  @cmpcbo688-13
  Scenario Outline: colleague navigated to the create client page and successfully captured the client details
    Given I navigate to the "colleague_create_client_url" page
    When I entered "<client_name>" in "client_name_entry_field"
    And I entered "<bpid>" in "bp_id_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<address3>" in "address_line3_entry_field"
    And I entered "<city>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I entered "<cmd_id>" in "cmd_id_entry_field"
    And I click on "next_button"
    Then the "service_packages_page_label" is displayed as “<service_package_title>”

    Examples:
      | client_name | bpid       | address1 | address2 | address3 | city   | country        | postcode | cmd_id     | service_package_title |
      | Volvo UK    | 8025489523 | address4 | address5 | address6 | London | United Kingdom | IG11 1JD | 5060708765 | Service packages      |


