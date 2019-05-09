@cmpcbo-73 @customer @regression @sprint10
Feature: CMPCBO-73 - Assign role profile
  Colleague is able to assign predefined SAP role from the drop down menu on the Assign user role screen

  @cmpcbo73-01
  Scenario: Colleague navigated to the Assign user role page and assigned division/business partner, the
  role type field is displayed with the available roles
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "Dally" in "firstName_entry_field"
    And I entered "Test" in "lastName_entry_field"
    And I entered "DTEST" in "username_entry_field"
    And I entered "dtest@test.com" in "email_entry_field"
    And I entered "dtest@test.com" in "confirm_email_entry_field"
    And I entered "02031108902" in "phone_entry_field"
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
    And the "continue_button" is activated
    #And I should see "role_profile" is visible & displayed

  @cmpcbo73-02
  Scenario: Colleague navigated to the Assign user role page, after assigning division/business partner, a role
  type is selected and the description text is displayed while the continue button is activated.
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "Mr" from the dropdown "title_entry_field"
    And I entered "Dally" in "firstName_entry_field"
    And I entered "Test" in "lastName_entry_field"
    And I entered "DTEST" in "username_entry_field"
    And I entered "dtest@test.com" in "email_entry_field"
    And I entered "dtest@test.com" in "confirm_email_entry_field"
    And I entered "02031108902" in "phone_entry_field"
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
    And the "continue_button" is activated









