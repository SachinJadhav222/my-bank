@cmpcbo-732 @customer @regression @sprint16
Feature: CMPCBO-732- Edit user details on check and confirm page

  Background: Navigate to Check and confirm Page
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "WiproOne" in "firstName_entry_field"
    And I entered "TesterOne" in "lastName_entry_field"
    And I entered "QE111" in "username_entry_field"
    And I entered "testOne@testOne.com" in "email_entry_field"
    And I entered "testOne@testOne.com" in "confirm_email_entry_field"
    And I entered "98765432" in "phone_entry_field"
    And I entered "Address 1" in "address_line1_entry_field"
    And I entered "Address 2" in "address_line2_entry_field"
    And I entered "Town One" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IM1 2UR" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I click on "next_button"

#  @cmpcbo732-01
#  Scenario Outline: Edit user details on check and confirm page
#    When I could see "create_user_page_heading" as "Create a new user"
#    And I click on "ucc_edit_user_details_button"
#    And I could see "create_user_page_heading" as "Create a new user"
#    And I select title as "<title>" from the "title_entry_field"
#    And I entered "<firstName>" in "firstName_entry_field"
#    And I entered "<lastName>" in "lastName_entry_field"
#    And I entered "<userName>" in "username_entry_field"
#    And I entered "<email>" in "email_entry_field"
#    And I entered "<email>" in "confirm_email_entry_field"
#    And I entered "<phone>" in "phone_entry_field"
#    And I click on "next_button"
#    And I could see "assign_roles_heading" as "Assign roles"
#    And I click on "next_button"
#    And I could see "user_set_homepage_heading" as "Set homepage"
#    And I click on "next_button"
#    And I could see "create_user_page_heading" as "Create a new user"
#    Then I should see User Name as "<title>","<firstName>","<lastName>" at "ucc_name_field"
#    And I should see a "ucc_username_field" as "<userName>"
#    And I should see a "ucc_email_field" as "<email>"
#    And I should see a "ucc_phone_field" as "<phone>"
#
#    Examples:
#      | title | firstName | lastName  | userName | email               | phone |
#      | Mr    | WiproNEW  | TesterNEW | QE222    | testNEW@testOne.com | 12345 |

  @cmpcbo732-02
  Scenario: Edit Assign Role on check and confirm page
    When I click on "ucc_edit_assign_role_button"
    And I could see "assign_roles_heading" as "Assign roles"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I could see "user_set_homepage_heading" as "Set homepage"
    And I click on "next_button"
    And I could see "create_user_page_heading" as "Create a new user"
    Then  I should see "ucc_ocb_business_partner_role_field" is visible & displayed
    And  I should see "ucc_ocb_role_profile_field" is visible & displayed

  @cmpcbo732-03
  Scenario: Edit Set Homepage on check and confirm page
    When I click on "ucc_edit_homepage_button"
    Then I should see Page Heading "Set homepage" at "user_set_homepage_heading"




