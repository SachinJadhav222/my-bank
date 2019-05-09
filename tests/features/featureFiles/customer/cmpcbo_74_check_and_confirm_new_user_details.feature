@cmpcbo-74 @customer @colleagueCreatePAUser @regression @sprint10
Feature: CMPCBO-74 -Check and Confirm New user details
  I as Colleague
  want to check and confirm
  user details captured earlier

  @cmpcbo74-01
  Scenario: Heading are visible in readonly mode
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Wipro" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "WIPRO999" in "username_entry_field"
    And I entered "QA Engineer" in "jobTitle_entry_field"
    And I entered "tester@wipro.com" in "email_entry_field"
    And I entered "tester@wipro.com" in "confirm_email_entry_field"
    And I entered "0987654321" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I click on "next_button"
    Then I should see the "create_user_page_heading" as "Create a new user"
    And I should see "ucc_client_details_label" is visible & displayed
    And I should see "ucc_client_id_label" is visible & displayed
    And I should see "ucc_client_name_label" is visible & displayed
    And I should see "ucc_user_details_label" is visible & displayed
    And I should see "ucc_username_label" is visible & displayed
    And I should see "ucc_job_title_label" is visible & displayed
    And I should see "ucc_email_label" is visible & displayed
    And I should see "ucc_phone_label" is visible & displayed
    And I should see "ucc_address_label" is visible & displayed
    And I should see "ucc_start_date_label" is visible & displayed
    And I should see "ucc_assign_role_label" is visible & displayed
    And I should see "ucc_ocb_description_label" is visible & displayed
    And I should see "ucc_selected_homepage_label" is visible & displayed
    And I should see "ucc_homepage_description_label" is visible & displayed

  @cmpcbo74-02
  Scenario Outline: Client details are captured correctly and persisted
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Wipro" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "WIPRO999" in "username_entry_field"
    And I entered "QA Engineer" in "jobTitle_entry_field"
    And I entered "tester@wipro.com" in "email_entry_field"
    And I entered "tester@wipro.com" in "confirm_email_entry_field"
    And I entered "0987654321" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I click on "next_button"
    Then I should see a "ucc_client_id_field" as "<clientID>"
    And I should see a "ucc_client_name_field" as "<clientName>"
    And I should see a "ucc_username_field" as "<userName>"
    And I should see a "ucc_email_field" as "<email>"
    And I should see a "ucc_job_title_field" as "<jobTitle>"
    And I should see a "ucc_phone_field" as "<phone>"
    And I should see a "ucc_address_country_field" as "<country>"
    And I should see a "ucc_address_postcode_field" as "<postcode>"
    Examples:
      | clientID   | clientName  | userName | jobTitle    | email            | phone      | country        | postcode |
      | 3234567891 | Volvo Group | WIPRO999 | QA Engineer | tester@wipro.com | 0987654321 | United Kingdom | IG11 7NX |

#  @cmpcbo74-03
#  Scenario Outline: Edit user details on check and confirm page
#    When I select by Text "Dr" from the dropdown "title_entry_field"
#    And I entered "Wipro" in "firstName_entry_field"
#    And I entered "Tester" in "lastName_entry_field"
#    And I entered "WIPRO999" in "username_entry_field"
#    And I entered "QA Engineer" in "jobTitle_entry_field"
#    And I entered "tester@wipro.com" in "email_entry_field"
#    And I entered "tester@wipro.com" in "confirm_email_entry_field"
#    And I entered "0987654321" in "phone_entry_field"
#    And I entered "address1" in "address_line1_entry_field"
#    And I entered "address2" in "address_line2_entry_field"
#    And I entered "address3" in "address_line3_entry_field"
#    And I entered "Barking" in "town_entry_field"
#    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
#    And I entered "IG11 7NX" in "postcode_entry_field"
#    And I click on "next_button"
#    And I select by index 1 the "uar_select_business_partner"
#    And I select by index 1 the "uar_select_role_profile"
#    And I click on "next_button"
#    And I click on "next_button"
#    And I click on "ucc_edit_user_details_button"
#    And I could see "create_user_page_heading" as "Create a new user"
#    And I entered "<email>" in "email_entry_field"
#    And I entered "<email>" in "confirm_email_entry_field"
#    And I click on "next_button"
#    And I could see "assign_roles_heading" as "Assign roles"
#    And I click on "next_button"
#    And I click on "next_button"
#    Then I should see Page Heading "Create a new user" at "create_user_page_heading"
#    And I should see a "ucc_email_field" as "<email>"
#    Examples:
#      | email                    |
#      | new_test_email@wipro.com |

  @cmpcbo74-03
  Scenario: Edit Assign Role on check and confirm page
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Wipro" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "WIPRO999" in "username_entry_field"
    And I entered "QA Engineer" in "jobTitle_entry_field"
    And I entered "tester@wipro.com" in "email_entry_field"
    And I entered "tester@wipro.com" in "confirm_email_entry_field"
    And I entered "0987654321" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    #And I should see Page Heading "Assign roles"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I click on "next_button"
    And I click on "ucc_edit_assign_role_button"
    And I could see "assign_roles_heading" as "Assign roles"
    And I click on "next_button"
    And I click on "next_button"
    Then I should see Page Heading "Create a new user" at "create_user_page_heading"

  @cmpcbo74-04
  Scenario: CANCEL Button on user check and confirm page
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Wipro" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "WIPRO999" in "username_entry_field"
    And I entered "QA Engineer" in "jobTitle_entry_field"
    And I entered "tester@wipro.com" in "email_entry_field"
    And I entered "tester@wipro.com" in "confirm_email_entry_field"
    And I entered "0987654321" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I click on "next_button"
    And I click on "cancel_create_user_button"
    And I click on "usr_cancel_confirmation_message_action2"
    Then I should see Page Heading "Mock Landing Page" at "mock_landing_page"

  @cmpcbo74-05
  Scenario: BACK Button on user check and confirm page
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Wipro" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "WIPRO999" in "username_entry_field"
    And I entered "QA Engineer" in "jobTitle_entry_field"
    And I entered "tester@wipro.com" in "email_entry_field"
    And I entered "tester@wipro.com" in "confirm_email_entry_field"
    And I entered "0987654321" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I click on "next_button"
    Then I click on "previous_button"
    Then I should see Page Heading "Set homepage" at "user_set_homepage_heading"

  @cmpcbo74-06
  Scenario: User workflow is confirmed on the check and confirm page
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Wipro" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "WIPRO999" in "username_entry_field"
    And I entered "QA Engineer" in "jobTitle_entry_field"
    And I entered "tester@wipro.com" in "email_entry_field"
    And I entered "tester@wipro.com" in "confirm_email_entry_field"
    And I entered "0987654321" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I click on "next_button"
    And I click on "next_button"
    Then I should see "Workflow created: Create user request" as "create_user_workflow_header"

  @cmpcbo74-07
  Scenario: Return Home Button on Workflow ID pop-up message
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Wipro" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "WIPRO999" in "username_entry_field"
    And I entered "QA Engineer" in "jobTitle_entry_field"
    And I entered "tester@wipro.com" in "email_entry_field"
    And I entered "tester@wipro.com" in "confirm_email_entry_field"
    And I entered "0987654321" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I click on "next_button"
    And I click on "next_button"
    And I click on "create_user_workflow_return_home_bt"
    Then I should see Page Heading "Mock Landing Page" at "mock_landing_page"

