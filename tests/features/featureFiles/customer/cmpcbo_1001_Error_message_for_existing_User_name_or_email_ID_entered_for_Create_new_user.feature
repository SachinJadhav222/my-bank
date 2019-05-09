@cmpcbo-1001 @customer @regression @sprint18
Feature: CMPCBO-1001 - Error message for existing User name or email ID entered for Create new user - by Client

  @cmpcbo1001-01
  Scenario Outline: CMP Customer Admin types non unique Username in Create User page and gets Error message
    Given I navigate to the "volvo_primary_admin" page
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "WiproOne" in "firstName_entry_field"
    And I entered "TesterOne" in "lastName_entry_field"
    And I entered "<username>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "02011118902" in "phone_entry_field"
    And I entered "Address1" in "address_line1_entry_field"
    And I entered "Address2" in "address_line2_entry_field"
    And I entered "Address3" in "address_line3_entry_field"
    And I entered "New Town" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    When I click on "next_button"
    Then I should see "username_entry_field" outline is Highlighted RED color
    And I should see Error Message "<username_error_message>" displayed at "username_alreadyexist_msg1"
    Examples:
      | username  | email                |  username_error_message          |
      | FAILEDRSA | silaja@FAILEDRSA.com |  The username is already in use. |

  @cmpcbo1001-02
  Scenario Outline: CMP Customer Admin types non unique Email address in Create User page and gets Error message
    Given I navigate to the "volvo_primary_admin" page
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "WiproOne" in "firstName_entry_field"
    And I entered "TesterOne" in "lastName_entry_field"
    And I entered "<username>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "02011118902" in "phone_entry_field"
    And I entered "Address1" in "address_line1_entry_field"
    And I entered "Address2" in "address_line2_entry_field"
    And I entered "Address3" in "address_line3_entry_field"
    And I entered "New Town" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    When I click on "next_button"
    Then I should see "email_entry_field" outline is Highlighted RED color
    And I should see Error Message "<email_error_message>" displayed at "email_already_in_use_message"

    Examples:
      | username         | email                   |  email_error_message                                                         |
      | TESTUSERPRAKYA11 | FAILEDRSA@FAILEDRSA.com |  The email address you entered has already been used to set up another user. |

  @cmpcbo1001-03
  Scenario Outline: CMP Customer Admin types non unique Username &  Email address in Create User page and gets Error message
    Given I navigate to the "volvo_primary_admin" page
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "WiproOne" in "firstName_entry_field"
    And I entered "TesterOne" in "lastName_entry_field"
    And I entered "<username>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "02011118902" in "phone_entry_field"
    And I entered "Address1" in "address_line1_entry_field"
    And I entered "Address2" in "address_line2_entry_field"
    And I entered "Address3" in "address_line3_entry_field"
    And I entered "New Town" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    When I click on "next_button"
    Then I should see "email_entry_field" outline is Highlighted RED color
    And I should see Error Message "<username_error_message>" displayed at "username_already_exist_message"
    And I should see Error Message "<email_error_message>" displayed at "email_already_in_use_message"

    Examples:
      | username  | email                   |  username_error_message                      | email_error_message                                                         |
      | FAILEDRSA | FAILEDRSA@FAILEDRSA.com |  The username you entered is already in use. | The email address you entered has already been used to set up another user. |

