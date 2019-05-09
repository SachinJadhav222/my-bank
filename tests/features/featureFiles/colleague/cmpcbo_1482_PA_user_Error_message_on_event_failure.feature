#@cmpcbo-1482 @client @colleagueCreatePAUser @regression @sprint24
#Feature: CMPCBO-1482- Error on the event failure
#
#  Background:
#    And I SET the Cookie Name: "clientId" and Value: "3234567891"
#    And I SET the Cookie Name: "correlationId" and Value: "1234567mockCorrelationID"
#    Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
#
#
#  @cmpcbo1482-01
#  Scenario Outline: Error message on event failure - with Correlation ID
#    And I should see Page Heading "User details" at "user_details_page_heading"
#    And I select by Text "Mrs" from the dropdown "title_entry_field"
#    And I entered "Legos" in "firstName_entry_field"
#    And I entered "Tester" in "lastName_entry_field"
#    And I entered "legotest@test.com" in "email_entry_field"
#    And I entered "legotest@test.com" in "confirm_email_entry_field"
#    And I entered "02011118908" in "phone_entry_field"
#    And I entered "address1" in "address_line1_entry_field"
#    And I entered "address2" in "address_line2_entry_field"
#    And I entered "address3" in "address_line3_entry_field"
#    And I entered "Barking" in "town_entry_field"
#    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
#    And I entered "IG11 7NT" in "postcode_entry_field"
#    And I click on "continue_button"
#    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
#    And I click on "continue_button"
#    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
#    And I click on "continue_button"
#    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
#    And I click on "confirm_button" to get Mock Error Message
#    And I should see "<error_message_header>" as "pa_user_create_workflow_model_header"
#    And I should see Partial Text Present "<error_message_body>" without "Workflow item ID 1872756668" as "pa_user_create_workflow_model_body"
#    And I should see "<confirmation_message_button1>" as "pa_user_create_workflow_model_return_home_button"
#    And I should see "<confirmation_message_button2>" as "pa_user_create_workflow_model_create_another_user_button"
#
#    Examples:
#      | error_message_header | error_message_body                                                                                    | confirmation_message_button1 | confirmation_message_button2 |
#      | Error                | Sorry, an error has occurred while performing your request. Please keep records of the correlation ID | Return Home                  | Back to Search               |
#
#  @cmpcbo1482-02
#  Scenario Outline: Error message on event failure - No correlation ID
#    And I should see Page Heading "User details" at "user_details_page_heading"
#    And I select by Text "Mrs" from the dropdown "title_entry_field"
#    And I entered "Legos" in "firstName_entry_field"
#    And I entered "Tester" in "lastName_entry_field"
#    And I entered "legotest@test.com" in "email_entry_field"
#    And I entered "legotest@test.com" in "confirm_email_entry_field"
#    And I entered "02011118908" in "phone_entry_field"
#    And I entered "address1" in "address_line1_entry_field"
#    And I entered "address2" in "address_line2_entry_field"
#    And I entered "address3" in "address_line3_entry_field"
#    And I entered "Barking" in "town_entry_field"
#    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
#    And I entered "IG11 7NT" in "postcode_entry_field"
#    And I click on "continue_button"
#    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
#    And I click on "continue_button"
#    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
#    And I click on "continue_button"
#    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
#    And I click on "confirm_button" to get Mock Error Message
#    And I should see "<error_message_header>" as "pa_user_create_workflow_model_header"
#    And I should see Partial Text Present "<error_message_body>" without "Workflow item ID 1872756668" as "pa_user_create_workflow_model_body"
#    And I should see "<confirmation_message_button1>" as "pa_user_create_workflow_model_return_home_button"
#    And I should see "<confirmation_message_button2>" as "pa_user_create_workflow_model_create_another_user_button"
#    And I click on "pa_user_create_workflow_model_return_home_button"
#    Then I should see Page Heading "Create PA User by Colleague" at "pa_user_mock_landing_page_heading"
#
#    Examples:
#      | error_message_header | error_message_body                                                                                    | confirmation_message_button1 | confirmation_message_button2 |
#      | Error                | Sorry, an error has occurred while performing your request. Please raise an incident in the incident management system. | Return Home                  | Back to Search               |
#
