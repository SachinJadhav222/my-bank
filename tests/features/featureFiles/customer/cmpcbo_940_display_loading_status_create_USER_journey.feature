#@cmpcbo-940 @customer @regression @sprint17?
#Feature: CMPCBO-940 - Display loading status create USER journey
#
#  Background: Colleague navigated to the create user page
#    Given I navigate to the "volvo_primary_admin" page
#    And I navigate to the "volvo_primary_admin" page
#    And I select title as "Dr" from the "title_entry_field"
#    And I entered "WiproOne" in "firstName_entry_field"
#    And I entered "TesterOne" in "lastName_entry_field"
#    And I entered "QE111" in "username_entry_field"
#    And I entered "qetest@test.com" in "email_entry_field"
#    And I entered "qetest@test.com" in "confirm_email_entry_field"
#    And I entered "02011118902" in "phone_entry_field"
#    And I entered "Address1" in "address_line1_entry_field"
#    And I entered "Address2" in "address_line2_entry_field"
#    And I entered "Address3" in "address_line3_entry_field"
#    And I entered "New Town" in "town_entry_field"
#    And I select "Afghanistan" from the "country_entry_field"
#
#
#  @cmpcbo940-01
#  Scenario Outline: Display loading status on "User Details" page
#    Then I should see Page Heading "User details" at "user_details_page_heading"
#    And I click on "next_button"
#    Then I should see a "user_page_loading_spinner" as "<spinner_message>"
#
#    Examples:
#      | spinner_message                         |
#      | your request is processing, please wait |
#
#
#  @cmpcbo940-02
#  Scenario Outline: Display loading status on "Assign user role" page
#    Then I should see Page Heading "User details" at "user_details_page_heading"
#    And I click on "next_button"
#    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
#    And I select by Index "1" from the dropdown "uar_select_business_partner"
#    And I select by Index "1" from the dropdown "uar_select_role_profile"
#    And I click on "next_button"
#    Then I should see a "user_page_loading_spinner" as "<spinner_message>"
#
#    Examples:
#      | spinner_message                         |
#      | your request is processing, please wait |
#
#  @cmpcbo940-03
#  Scenario Outline: Display loading status on "Set Homepage" page
#    Then I should see Page Heading "User details" at "user_details_page_heading"
#    And I click on "next_button"
#    Then I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
#    And I select by Index "1" from the dropdown "uar_select_business_partner"
#    And I select by Index "1" from the dropdown "uar_select_role_profile"
#    And I click on "next_button"
#    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
#    When I click on "next_button"
#    Then I should see a "user_page_loading_spinner" as "<spinner_message>"
#
#    Examples:
#      | spinner_message                         |
#      | your request is processing, please wait |
#
#
#  @cmpcbo940-04
#  Scenario Outline: Display loading status on "Check and confirm" page
#    Then I should see Page Heading "User details" at "user_details_page_heading"
#    And I click on "next_button"
#    Then I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
#    And I select by Index "1" from the dropdown "uar_select_business_partner"
#    And I select by Index "1" from the dropdown "uar_select_role_profile"
#    And I click on "next_button"
#    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
#    When I click on "next_button"
#    Then I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"
#    When I click on "next_button"
#    Then I should see a "user_page_loading_spinner" as "<spinner_message>"
#
#    Examples:
#      | spinner_message                         |
#      | your request is processing, please wait |
#
#
#
