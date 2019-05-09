@cmpcbo-1451 @client @colleagueCreatePAUser @regression @sprint23
Feature: CMPCBO-1451 - PA user details captured readonly on check and confirm page

  Background:
    And I SET the Cookie Name: "clientId" and Value: "3234567891"
    And I SET the Cookie Name: "correlationId" and Value: "1234567mockCorrelationID"

  @cmpcbo1451-01
  Scenario Outline: Client captured PA user's details and navigate to the check and confirm page
    Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<firstName>" in "firstName_entry_field"
    And I entered "<lastName>" in "lastName_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "continue_button"
    #And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    And I click on "continue_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "continue_button"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    Then I should see a "ucc_client_id_field" as "<clientID>"
    And I should see a "ucc_client_name_field" as "<clientName>"
    And I should see a "ucc_name_field" as "<title> <firstName> <lastName>"
    And I should see a "ucc_email_field" as "<email>"
    And I should see a "ucc_phone_field" as "<phone>"
    And I should see a "ucc_address_country_field" as "<country>"
    And I should see a "ucc_address_postcode_field" as "<postcode>"
    And I should see a "ucc_ocb_role_field" as "<ocb_role>"
    And I should see a "ucc_ocb_business_partner_role_field" as "<ocb_business_partner>"
    And I should see a "ucc_selected_homepage_field" as "<selected_homepage>"

    Examples:
      | clientID   | clientName  | title | firstName | lastName | email           | phone       | address1 | address2 | town    | country        | postcode | ocb_role | ocb_business_partner | selected_homepage  |
      | 3234567891 | Volvo Group | Mr    | Jack      | Boot     | jktest@test.com | 02076542345 | address1 | address2 | Swindon | United Kingdom | IG11 8NT | Yes      | Volvo Group          | Accounts by entity |


  @cmpcbo1451-02
  Scenario Outline: Edit Action -Client details and data persistence
    Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<firstName>" in "firstName_entry_field"
    And I entered "<lastName>" in "lastName_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "continue_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    And I click on "continue_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "continue_button"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I click on "ucc_edit_user_details_button"
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I should read "<firstName>" is displayed at "firstName_entry_field"
    And I should read "<lastName>" is displayed at "lastName_entry_field"
    And I should read "<email>" is displayed at "email_entry_field"
    And I should read "<phone>" is displayed at "phone_entry_field"
    And I should read "<address1>" is displayed at "address_line1_entry_field"
    And I entered "<new_email>" in "email_entry_field"
    And I entered "<new_email>" in "confirm_email_entry_field"
    And I click on "continue_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    And I click on "continue_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "continue_button"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    #And I should read "<new_email>" is displayed at "ucc_email_field"

    Examples:
      | title | firstName | lastName | email           | phone       | address1 | address2 | town    | country        | postcode | new_email          |
      | Mr    | Jack      | Boot     | jktest@test.com | 02076542345 | address1 | address2 | Swindon | United Kingdom | IG11 8NT | newemail@test.com |


  @cmpcbo1451-03
  Scenario Outline: Edit Action -Assign Role
    Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<firstName>" in "firstName_entry_field"
    And I entered "<lastName>" in "lastName_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "continue_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    And I click on "continue_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "continue_button"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I click on "ucc_edit_assign_role_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"

    Examples:
      | title | firstName | lastName | email           | phone       | address1 | address2 | town    | country        | postcode |
      | Mr    | Jack      | Boot     | jktest@test.com | 02076542345 | address1 | address2 | Swindon | United Kingdom | IG11 8NT |

  @cmpcbo1451-04
  Scenario Outline:  Edit Action- Set Homepage
    Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<firstName>" in "firstName_entry_field"
    And I entered "<lastName>" in "lastName_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "continue_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    And I click on "continue_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "continue_button"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I click on "ucc_edit_homepage_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"

    Examples:
      | title | firstName | lastName | email           | phone       | address1 | address2 | town    | country        | postcode |
      | Mr    | Jack      | Boot     | jktest@test.com | 02076542345 | address1 | address2 | Swindon | United Kingdom | IG11 8NT |

