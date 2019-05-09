@cmpcbo-552 @customer @regression @sprint11
Feature: CMPCBO-552 - Wire Assign Role to check and confirm Page
  I as Colleague
  want to assign and check
  Assigned roles values are displayed in Check and Confirm Page

  Background: Navigation to User check and Confirm Page
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Wipro" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "WIPRO999" in "username_entry_field"
    And I entered "QA Engineer" in "jobTitle_entry_field"
    And I entered "tester@wipro.com" in "email_entry_field"
    And I entered "tester@wipro.com" in "confirm_email_entry_field"
    And I entered "0987654321" in "phone_entry_field"
    And I entered "Valid Address 1" in "address_line1_entry_field"
    And I entered "Valid Address 2" in "address_line2_entry_field"
    And I entered "Valid Address 3" in "address_line3_entry_field"
    And I entered "Ford" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "FA2 3FA" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I click on "next_button"

  @cmpcbo552-01
  Scenario Outline: Check assign role values are displayed in Check and Confirm Page
    When I could see "create_user_page_heading" as "Create a new user"
    Then I should see a "ucc_ocb_role_field" as "<checkbox_status>"
    And I should see "ucc_ocb_business_partner_role_field" is visible & displayed
    And I should see "ucc_ocb_role_profile_field" is visible & displayed
    And I should see "ucc_ocb_description_field" is visible & displayed
    Examples:
      | checkbox_status |
      | Yes             |

  @cmpcbo552-02
  Scenario Outline: Edit Assign Role from Check and Confirm Page
    Given I click on "ucc_edit_assign_role_button"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I click on "next_button"
    And I could see "create_user_page_heading" as "Create a new user"
    Then I should see a "ucc_ocb_role_field" as "<checkbox_status>"
    And I should see "ucc_ocb_business_partner_role_field" is visible & displayed
    And I should see "ucc_ocb_role_profile_field" is visible & displayed
    And I should see "ucc_ocb_description_field" is visible & displayed
    Examples:
      | checkbox_status |
      | Yes             |









