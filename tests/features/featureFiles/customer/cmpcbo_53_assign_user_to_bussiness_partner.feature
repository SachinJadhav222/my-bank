@cmpcbo-53 @customer @regression @sprint10
Feature: CMPCBO-53 - Assign user role business partner
  I as Colleague
  want to check and confirm
  user details captured earlier

  @cmpcbo53-01
  Scenario: Assign role selection fields are visible and selectable
    Given I navigate to the "volvo_primary_admin" page
    When I navigate to the "volvo_primary_admin" page
    And  I select by Text "Mrs" from the dropdown "title_entry_field"
    And I entered "Sally" in "firstName_entry_field"
    And I entered "Test" in "lastName_entry_field"
    And I entered "STEST" in "username_entry_field"
    And I entered "stest@test.com" in "email_entry_field"
    And I entered "stest@test.com" in "confirm_email_entry_field"
    And I entered "02031118902" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 6NX" in "postcode_entry_field"
    And I click on "next_button"
    And I could see "assign_roles_heading" as "Assign roles"
    Then the OCB coarse grain role "ocb_checkbox" existed and preselected
    And I should see "uar_assign_role_label" is visible & displayed
    And I should see "uar_ocb_checkbox_label" is visible & displayed
    And I should see "uar_select_business_partner_label" is visible & displayed
    And I should see "uar_select_role_profile_label" is visible & displayed

  @cmpcbo53-02
  Scenario: checkbox is pre-selected to OCB
    Given I navigate to the "volvo_primary_admin" page
    When  I select by Text "Mrs" from the dropdown "title_entry_field"
    And I entered "Sally" in "firstName_entry_field"
    And I entered "Test" in "lastName_entry_field"
    And I entered "STEST" in "username_entry_field"
    And I entered "stest@test.com" in "email_entry_field"
    And I entered "stest@test.com" in "confirm_email_entry_field"
    And I entered "02031118902" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 6NX" in "postcode_entry_field"
    And I click on "next_button"
    Then I should see checkbox "uar_ocb_checkbox_label" is checked

  @cmpcbo53-03
  Scenario: Select Business Partners & role profile in dropdown to see the role description
    Given I navigate to the "volvo_primary_admin" page
    When  I select by Text "Mrs" from the dropdown "title_entry_field"
    And I entered "Sally" in "firstName_entry_field"
    And I entered "Test" in "lastName_entry_field"
    And I entered "STEST" in "username_entry_field"
    And I entered "stest@test.com" in "email_entry_field"
    And I entered "stest@test.com" in "confirm_email_entry_field"
    And I entered "02031118902" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 6NX" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    Then  I should see "uar_description_label" is visible & displayed
