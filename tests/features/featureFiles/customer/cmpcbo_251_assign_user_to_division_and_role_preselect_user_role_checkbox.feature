@cmpcbo-251 @customer @regression @sprint15
Feature: CMPCBO-251 - Assign user role to division and role preselect user role checkbox
  Colleague is able to see the OCB coarse grain checkbox pre-selected on the assign user role
  screen and colleague is unable to uncheck the preselected OCB coarse checkbox

  @cmpcbo251-01
  Scenario: Colleague navigated to the Assign user role page and saw the OCB coarse grain checkbox preselected
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "Mrs" from the dropdown "title_entry_field"
    And I entered "Tade" in "firstName_entry_field"
    And I entered "Test" in "lastName_entry_field"
    And I entered "JTEST" in "username_entry_field"
    And I entered "ttest@test.com" in "email_entry_field"
    And I entered "ttest@test.com" in "confirm_email_entry_field"
    And I entered "02011118902" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    And I could see "assign_roles_heading" as "Assign roles"
    Then the Cash management and payments coarse grain role "ocb_checkbox" existed and preselected
    #Then the OCB coarse grain role "ocb_checkbox" existed and preselected

  @cmpcbo251-02
  Scenario: Colleague navigated to the Assign user role page and saw the OCB coarse grain checkbox preselected
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "Mrs" from the dropdown "title_entry_field"
    And I entered "Jade" in "firstName_entry_field"
    And I entered "Test" in "lastName_entry_field"
    And I entered "JTEST" in "username_entry_field"
    And I entered "jtest@test.com" in "email_entry_field"
    And I entered "jtest@test.com" in "confirm_email_entry_field"
    And I entered "02011118902" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    Then the Cash management and payments coarse grain role "ocb_checkbox" existed and uncheckable
    #Then the OCB coarse grain role "ocb_checkbox" existed and uncheckable







