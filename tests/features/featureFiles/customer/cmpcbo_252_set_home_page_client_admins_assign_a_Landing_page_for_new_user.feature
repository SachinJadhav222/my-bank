@cmpcbo-252 @customer @regression @sprint15
Feature: CMPCBO-252- Client admin set home landing page for new user
  Client Admin assigns a Landing Page for the user which will be the page that they see at logon.


  @cmpcbo252-01
  Scenario Outline: Colleague successfully capture the user's details using the Create user form and navigated
  to the set home page screen and see the Accounts by entity radio button preselected by default.
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "Mrs" from the dropdown "title_entry_field"
    And I entered "Legos" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "LEGOSTEST" in "username_entry_field"
    And I entered "legotest@test.com" in "email_entry_field"
    And I entered "legotest@test.com" in "confirm_email_entry_field"
    And I entered "02011118908" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NT" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I could see "user_set_homepage_heading" as "<set_homepage_header>"
    Then I should see "user_set_homepage_accounts_by_entity_radio_button" existed and preselected


    Examples:
    |set_homepage_header|
    |Set homepage       |








