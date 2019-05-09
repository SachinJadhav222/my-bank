@cmpcbo-1152 @customer @regression @sprint19
Feature: CMPCBO-1152 - Highlight field in case user name or email id already in use
  The user's name and email ID being created has to be unique and Customer should be warned if either of these are already in use.

  @cmpcbo1152-01
  Scenario Outline: Modal window is displayed with the error message when user name is already in use
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<username>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    When I click on "next_button"
    Then I should see the "modal_window_error_header" as "Error"
    And the "red_error_icon" is visible
    And I should see the "username_modal_window_error_text_message" as "The username you entered is already in use."
    Examples:
      | title | fname | lname | username  | email               |  phone        | address1 | address2 | town   | country   |
      | Dr    | Ben   | Bruce | FAILEDRSA | silaja@FAILEDRSA.com |  020367540600 | address1 | address2 | Bamuda | Australia |

  @cmpcbo1152-02
  Scenario Outline: Modal window is displayed with the error message when email ID entered is in use - message
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<username>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    When I click on "next_button"
    Then I should see the "modal_window_error_header" as "Error"
    And the "red_error_icon" is visible
    And I should see the "email_modal_window_error_text_message" as "The email address you entered has already been used to set up another user."
    Examples:
      | title | fname | lname | username         | email                  |  phone        | address1 | address2 | town   | country   |
      | Dr    | Ben   | Bruce | TESTUSERPRAKYA11 | FAILEDRSA@FAILEDRSA.com |  020367540611 | address1 | address2 | Bamuda | Australia |

  @cmpcbo1152-03
  Scenario Outline: Modal window is displayed with the error message when both username and email id are in use
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<username>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    When I click on "next_button"
    Then I should see the "modal_window_error_header" as "Error"
    And the "red_error_icon" is visible
    And I should see the "username_modal_window_error_text_message" as "The username you entered is already in use."
    And I should see the "email_modal_window_error_text_message" as "The email address you entered has already been used to set up another user."
    Examples:
      | title | fname | lname | username  | email                  |  phone        | address1 | address2 | town   | country   |
      | Dr    | Ben   | Bruce | FAILEDRSA | FAILEDRSA@FAILEDRSA.com |  020367540611 | address1 | address2 | Bamuda | Australia |

  @cmpcbo1152-04
  Scenario Outline: When modal window with error message is displayed for non unique username and a Return to user details button is selected
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<username>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    When I click on "next_button"
    And I could see "modal_window_error_header" as "Error"
    And I click on "return_to_user_details_button"
    Then I should see "user_details_page_tab" displayed as "User details"
    Examples:
      | title | fname | lname | username  | email               |  phone        | address1 | address2 | town   | country   |
      | Dr    | Ben   | Bruce | FAILEDRSA | silaja@FAILEDRSA.com |  020367540600 | address1 | address2 | Bamuda | Australia |

  @cmpcbo1152-05
  Scenario Outline: When modal window with error message is displayed for non unique email ID and a Return to user details button is selected
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<username>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    When I click on "next_button"
    And I could see "modal_window_error_header" as "Error"
    And I click on "return_to_user_details_button"
    Then I should see "user_details_page_tab" displayed as "User details"
    Examples:
      | title | fname | lname | username         | email                  |  phone        | address1 | address2 | town   | country   |
      | Dr    | Ben   | Bruce | TESTUSERPRAKYA11 | FAILEDRSA@FAILEDRSA.com |  020367540611 | address1 | address2 | Bamuda | Australia |


    #Reference data from cmpcbo-1013