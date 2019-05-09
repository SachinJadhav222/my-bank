@cmpcbo-253 @customer @regression @sprint16
Feature: CMPCBO-253- Capture user details on check and confirm page in Read only mode

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
    And I click on "continue_button"
    And I could see "assign_roles_heading" as "Assign roles"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "continue_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "continue_button"


  @cmpcbo253-01
  Scenario Outline: Colleague successfully capture the user's details and check and confirm page
    When I could see "create_user_page_heading" as "Create a new user"
    Then I should see a "ucc_client_id_field" as "<clientID>"
    And I should see a "ucc_client_name_field" as "<clientName>"
    And I should see User Name as "<title>","<firstName>","<lastName>" at "ucc_name_field"
    And I should see a "ucc_username_field" as "<userName>"
    And I should see a "ucc_email_field" as "<email>"
    And I should see a "ucc_phone_field" as "<phone>"
    And I should see a "ucc_address_country_field" as "<country>"
    And I should see a "ucc_address_postcode_field" as "<postcode>"
    Then  I should see "ucc_ocb_business_partner_role_field" is visible & displayed
    And  I should see "ucc_ocb_role_profile_field" is visible & displayed
    And  I should see a "ucc_selected_homepage_field" as "<ocb_set_homepage>"

    Examples:
      | clientID   | clientName  | title | firstName | lastName  | userName | email               | phone    | country        | postcode | ocb_set_homepage   |
      | 3234567891 | Volvo Group | Dr    | WiproOne  | TesterOne | QE111    | testOne@testOne.com | 98765432 | United Kingdom | IM1 2UR  | Accounts by entity |

