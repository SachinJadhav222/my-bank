@cmpcbo-743 @customer  @regression @sprint16
Feature: CMPCBO-743 - Assign user to division and role and select business partner
  Displaying a Division/Business Partner based on Client admins position in organisational hierarchy

  @cmpcbo743-01
  Scenario Outline: As volvo group with admin right, I login and assign volvo cars division from the business partner drop down menu
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Testme" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "WIPR100" in "username_entry_field"
    And I entered "metester@wipro.com" in "email_entry_field"
    And I entered "metester@wipro.com" in "confirm_email_entry_field"
    And I entered "0977654321" in "phone_entry_field"
    And I entered "Valid Address 1" in "address_line1_entry_field"
    And I entered "Valid Address 2" in "address_line2_entry_field"
    And I entered "Valid Address 3" in "address_line3_entry_field"
    And I entered "Ford" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "FA2 2FA" in "postcode_entry_field"
    And I click on "next_button"
    And I could see "assign_roles_heading" as "Assign roles"
    When I select by Text "<business_partner>" from the dropdown "uar_select_business_partner"
    Then I should see "<business_partner>" as "uar_select_business_partner"

    Examples:
      | business_partner |
      | Volvo Group      |

  @cmpcbo743-02
  Scenario Outline: As volvo group with admin right, I login and assign division/business partners
  in succession from the business partner drop down menu
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Testme" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "WIPR100" in "username_entry_field"
    And I entered "metester@wipro.com" in "email_entry_field"
    And I entered "metester@wipro.com" in "confirm_email_entry_field"
    And I entered "0977654321" in "phone_entry_field"
    And I entered "Valid Address 1" in "address_line1_entry_field"
    And I entered "Valid Address 2" in "address_line2_entry_field"
    And I entered "Valid Address 3" in "address_line3_entry_field"
    And I entered "Ford" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "FA2 2FA" in "postcode_entry_field"
    And I click on "next_button"
    And I could see "assign_roles_heading" as "Assign roles"
    When I select by Text "<business_partner>" from the dropdown "uar_select_business_partner"
    Then I should see "<business_partner>" as "uar_select_business_partner"

    Examples:
      | business_partner |
      | Volvo Cars       |
      | Hybrid Cars      |
      | Diesel Cars      |
      | Unleaded Cars    |
      | Trucks           |
      | Buses            |

  @cmpcbo743-03
  Scenario Outline: As Volvo Cars Division with admin right, I login and assign division/business partners
  in succession from the business partner drop down menu
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Testme" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "WIPR100" in "username_entry_field"
    And I entered "metester@wipro.com" in "email_entry_field"
    And I entered "metester@wipro.com" in "confirm_email_entry_field"
    And I entered "0977654321" in "phone_entry_field"
    And I entered "Valid Address 1" in "address_line1_entry_field"
    And I entered "Valid Address 2" in "address_line2_entry_field"
    And I entered "Valid Address 3" in "address_line3_entry_field"
    And I entered "Ford" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "FA2 2FA" in "postcode_entry_field"
    And I click on "next_button"
    And I could see "assign_roles_heading" as "Assign roles"
    When I select by Text "<business_partner>" from the dropdown "uar_select_business_partner"
    Then I should see "<business_partner>" as "uar_select_business_partner"

    Examples:
      | business_partner |
      | Volvo Cars       |
      | Hybrid Cars      |
      | Diesel Cars      |
      | Unleaded Cars    |





