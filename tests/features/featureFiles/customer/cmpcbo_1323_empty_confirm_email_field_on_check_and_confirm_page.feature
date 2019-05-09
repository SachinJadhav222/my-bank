@cmpcbo-1323 @customer @regression @sprint21
Feature: CMPCBO-1323 - empty confirm email field when editing email address
  Empty confirm email field when editing email address using edit button on check and confirm page

  @cmpcbo1323-01
  Scenario Outline: Client captured user's details and navigate to the check and confirm page and edit user's email address
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<usrname>" in "username_entry_field"
    And I entered "<email1>" in "email_entry_field"
    And I entered "<confirm_email>" in "confirm_email_entry_field"
    And I entered "<telephone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I click on "next_button"
    And I could see "check_confirm_page_heading" as "<check_and_confirm_title>"
    When I click on "edit_user_details"
    And I entered "<email2>" in "email_entry_field"
    Then the "confirm_email_entry_field" is empty

    Examples:
      | title | fname | lname | usrname  | email1      | confirm_email | telephone   | address1 | address2 | town    | country        | postcode | check_and_confirm_title | email2       |
      | Mr    | Jack  | Boot  | JACKBOOT | jk@test.com | jk@test.com   | 02076542345 | address1 | address2 | Swindon | United Kingdom | IG11 8NT | Check and confirm       | jkw@test.com |



  




