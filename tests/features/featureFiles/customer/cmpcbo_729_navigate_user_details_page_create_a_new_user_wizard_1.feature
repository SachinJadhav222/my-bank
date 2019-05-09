@cmpcbo-729 @customer @regression @sprint16
Feature: CMPCBO-729 - Navigate to User details page and create a new user Wizard-1
  I as colleague
  want to check
  Navigation Buttons on Assign Role Page

  Background: Navigation to Assign Role Page
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "WiproOne" in "firstName_entry_field"
    And I entered "TestOne" in "lastName_entry_field"
    And I entered "QE111" in "username_entry_field"
    And I entered "qetest@test.com" in "email_entry_field"
    And I entered "qetest@test.com" in "confirm_email_entry_field"
    And I entered "02011118902" in "phone_entry_field"
    And I entered "Address1" in "address_line1_entry_field"
    And I entered "Address2" in "address_line2_entry_field"
    And I entered "Address3" in "address_line3_entry_field"
    And I entered "New Town" in "town_entry_field"
    And I select by Text "Afghanistan" from the dropdown "country_entry_field"
    And I click on "next_button"

  @cmpcbo729-01
  Scenario: Navigation button NEXT to Set Homepage page
    When I could see "assign_roles_heading" as "Assign roles"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    Then I should see Page Heading "Set homepage" at "user_set_homepage_heading"

  @cmpcbo729-02
  Scenario: Navigation button PREV to Create user page
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "previous_button"
    Then I should see the "create_user_page_heading" as "Create a new user"

