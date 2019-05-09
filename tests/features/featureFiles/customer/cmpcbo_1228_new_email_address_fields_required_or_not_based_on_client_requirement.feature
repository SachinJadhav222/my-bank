@cmpcbo-1228 @customer @clientEditUserDetails @regression @sprint20
Feature: CMPCBO-1228 - New email address fields required or not based on Client requirement
  New email address fields required or not required based on Client requirement - User details page

  Background: Colleague navigated to the create new user page
    Given I navigate to the "edit_user_primary_admin_client_volvo" page

  @cmpcbo1228-01
  Scenario Outline: Client wants to update email address and entered invalid email address
    When I entered "<email>" in "new_email_entry_field"
    And I click out of the Box on "edit_user_heading"
    Then I should see Mandatory field "new_email_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "new_email_address_error"
    Examples:
      | email                | error_message                                                                                                                |
      | --a@a.c:             | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | a2@a2.co--           | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | --a@a.c@             | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | my:email@test.com    | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | email@my@test.com    | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | email@my@my.test.com | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |


  @cmpcbo1228-02
  Scenario Outline: Client wants to update email address and entered valid email address
    When I entered "<email>" in "new_email_entry_field"
    And I entered "<email2>" in "new_confirm_email_entry_field"
    Then I click out of the Box on "edit_user_heading"
    Then I should see Mandatory field "new_email_entry_field" is Highlighted GREEN
    Examples:
      | email         | email2            |
      | test@test.com | test123@123.co.uk |


  @cmpcbo1228-03
  Scenario Outline: Client wants to update email address and entered valid email address but failed to enter the confirm email address
    When I entered "<email>" in "new_email_entry_field"
    Then I click out of the Box on "edit_user_heading"
    And I should see "continue_button" is Disabled
    Examples:
      | email         |
      | test@test.com |


  @cmpcbo1228-04
  Scenario Outline: colleague navigates to edit user page and did not update the email address but clicked on the continue button
    When I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<firstName>" in "firstName_entry_field"
    And I entered "<lastName>" in "lastName_entry_field"
    And I entered "<phone_no>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<address3>" in "address_line3_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "next_button"
    Then I should see "Assign user roles" as "uar_assign_role_page_heading"


    Examples:
      | title | firstName | lastName | phone_no    | address1 | address2 | address3 | town    | country        | postcode |
      | Mr    | Foo       | Troy     | 07882326677 | address4 | address5 | address6 | Barking | United Kingdom | IG11 1JD |
