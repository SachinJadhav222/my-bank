@cmpcbo-983 @customer @regression @sprint18
Feature: CMPCBO-983 - CMP Customer Admin able to see Workflow data based on Workflow ID

#  @cmpcbo983-01
#  Scenario Outline: : Display pop on "Check and confirm" page with workflow ID
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
#    And I click on "next_button"
#    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
#    And I select by Index "1" from the dropdown "uar_select_business_partner"
#    And I select by Index "1" from the dropdown "uar_select_role_profile"
#    And I click on "next_button"
#    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
#    And I click on "next_button"
#    Then I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"
#    And I click on "next_button"
#    Then I should see "<popup_header>" as "user_confirmation_popup_header"
#    And I should see "user_confirmation_popup_workflow_id" is visible & displayed
#    And I should see "user_confirmation_popup_message" is visible & displayed
#    And I should see "user_confirmation_popup_return_home_button" is visible & displayed
#    And I should see "user_confirmation_popup_create_another_user_button" is visible & displayed
#
#    Examples:
#      | popup_header                          |
#      | Workflow created: Create user request |

  Scenario Outline: CMP Customer Admin able to see Workflow data based on Workflow ID on Check and confirm page
    Given I navigate to the "customer_created_by_maker_log_as_approver" page
    Then I should see Page Heading "Check and confirm" as "ucc_check_and_confirm_page_heading"
      #user details
    And I should see a "ucc_name_field" as "<client_name>"
    And I should see a "ucc_username_field" as "<user_name>"
    And I should see a "ucc_email_field" as "<user_email>"
    And I should see a "ucc_phone_field" as "<user_phone>"
    And I should see a "ucc_address_country_field" as "<user_country>"
    And I should see a "ucc_startdate_field" as "<user_startdate>"
      #ocb role
    And I should see a "ucc_ocb_role_field" as "<user_ocb_role>"
    And I should see a "ucc_ocb_business_partner_role_field" as "<user_ocb_business_partner>"
    And I should see a "ucc_ocb_role_profile_field" as "<user_ocb_role_profile>"
      #set homepage
    And I should see a "ucc_selected_homepage_field" as "<user_set_homepage>"

    Examples:
      | client_name      | user_name | user_email  | user_phone    | user_country   | user_startdate | user_ocb_role | user_ocb_business_partner | user_ocb_role_profile | user_set_homepage  |
      | Mr Neil Townsley | DEVELOPER | bla@bla.com | 0434534534665 | United Kingdom | Immediately    | Yes           | Volvo Group               | Volvo primary profile | Accounts by entity |