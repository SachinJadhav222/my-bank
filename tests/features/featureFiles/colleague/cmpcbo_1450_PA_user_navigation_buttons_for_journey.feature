@cmpcbo-1450 @client @colleagueCreatePAUser @regression @sprint23
Feature: CMPCBO-1450- Navigation Buttons for PA user journey

#  Background:
#    Given I navigate to the "pa_user_mock_landing_page_url" page
#    And I click on "pa_user_mock_page_volvo_prime_admin_button"
  Background:
    And I SET the Cookie Name: "clientId" and Value: "3234567891"
    And I SET the Cookie Name: "correlationId" and Value: "1234567mockCorrelationID"
    Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page


  @cmpcbo1450-01
  Scenario: Continue Button navigates to Next Page.
    #Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "Mrs" from the dropdown "title_entry_field"
    And I entered "Legos" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "legotest@test.com" in "email_entry_field"
    And I entered "legotest@test.com" in "confirm_email_entry_field"
    And I entered "02011118908" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NT" in "postcode_entry_field"
    And I click on "continue_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    #And I could see "assign_roles_heading" as "Assign roles"
    And I click on "continue_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "continue_button"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"

  @cmpcbo1450-02
  Scenario: Back Button navigates to Previous Page.
    #Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "Mrs" from the dropdown "title_entry_field"
    And I entered "Legos" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "legotest@test.com" in "email_entry_field"
    And I entered "legotest@test.com" in "confirm_email_entry_field"
    And I entered "02011118908" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NT" in "postcode_entry_field"
    And I click on "continue_button"
    And I click on "continue_button"
    And I click on "continue_button"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I click on "back_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "back_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    And I click on "back_button"
    And I should see Page Heading "User details" at "user_details_page_heading"

  @cmpcbo1450-03
  Scenario Outline: Cancel Button  on User Details Page
   # Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I click on "cancel_button"
    And I should see "<confirmation_message_header>" as "usr_cancel_confirmation_message_header"
    And I should see "<confirmation_message_body>" as "usr_cancel_confirmation_message_body"
    And I should see "<confirmation_message_action1>" as "usr_cancel_confirmation_message_no_button"
    And I should see "<confirmation_message_action2>" as "usr_cancel_confirmation_message_yes_button"
    And I click on "usr_cancel_confirmation_message_no_button"
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I click on "cancel_button"
    And I should see "<confirmation_message_header>" as "usr_cancel_confirmation_message_header"
    And I click on "usr_cancel_confirmation_message_yes_button"
    Then I should see Page Heading "Mock Landing Page" at "mock_landing_page"

    Examples:
      | confirmation_message_header | confirmation_message_body                                   | confirmation_message_action1 | confirmation_message_action2 |
      | Cancel create a new user?   | Are you sure you want to cancel? All progress will be lost. | No, I don't want to cancel   | Yes, I want to cancel        |

  @cmpcbo1450-04
  Scenario Outline: Cancel Button  on Assign Role Page
   # Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "Mrs" from the dropdown "title_entry_field"
    And I entered "Legos" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "legotest@test.com" in "email_entry_field"
    And I entered "legotest@test.com" in "confirm_email_entry_field"
    And I entered "02011118908" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NT" in "postcode_entry_field"
    And I click on "continue_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    And I click on "cancel_button"
    And I should see "<confirmation_message_header>" as "usr_cancel_confirmation_message_header"
    And I should see "<confirmation_message_body>" as "usr_cancel_confirmation_message_body"
    And I should see "<confirmation_message_action1>" as "usr_cancel_confirmation_message_no_button"
    And I should see "<confirmation_message_action2>" as "usr_cancel_confirmation_message_yes_button"
    And I click on "usr_cancel_confirmation_message_no_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    And I click on "cancel_button"
    And I should see "<confirmation_message_header>" as "usr_cancel_confirmation_message_header"
    And I click on "usr_cancel_confirmation_message_yes_button"
    Then I should see Page Heading "Mock Landing Page" at "mock_landing_page"

    Examples:
      | confirmation_message_header | confirmation_message_body                                   | confirmation_message_action1 | confirmation_message_action2 |
      | Cancel create a new user?   | Are you sure you want to cancel? All progress will be lost. | No, I don't want to cancel   | Yes, I want to cancel        |

  @cmpcbo1450-05
  Scenario Outline: Cancel Button  on Set Home Page
   # Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "Mrs" from the dropdown "title_entry_field"
    And I entered "Legos" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "legotest@test.com" in "email_entry_field"
    And I entered "legotest@test.com" in "confirm_email_entry_field"
    And I entered "02011118908" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NT" in "postcode_entry_field"
    And I click on "continue_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    And I click on "continue_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "cancel_button"
    And I should see "<confirmation_message_header>" as "usr_cancel_confirmation_message_header"
    And I should see "<confirmation_message_body>" as "usr_cancel_confirmation_message_body"
    And I should see "<confirmation_message_action1>" as "usr_cancel_confirmation_message_no_button"
    And I should see "<confirmation_message_action2>" as "usr_cancel_confirmation_message_yes_button"
    And I click on "usr_cancel_confirmation_message_no_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "cancel_button"
    And I should see "<confirmation_message_header>" as "usr_cancel_confirmation_message_header"
    And I click on "usr_cancel_confirmation_message_yes_button"
    Then I should see Page Heading "Mock Landing Page" at "mock_landing_page"

    Examples:
      | confirmation_message_header | confirmation_message_body                                   | confirmation_message_action1 | confirmation_message_action2 |
      | Cancel create a new user?   | Are you sure you want to cancel? All progress will be lost. | No, I don't want to cancel   | Yes, I want to cancel        |

  @cmpcbo1450-06
  Scenario Outline: Cancel Button  on Check and Confirm Page
   # Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    And I should see Page Heading "User details" at "user_details_page_heading"
    And I select by Text "Mrs" from the dropdown "title_entry_field"
    And I entered "Legos" in "firstName_entry_field"
    And I entered "Tester" in "lastName_entry_field"
    And I entered "legotest@test.com" in "email_entry_field"
    And I entered "legotest@test.com" in "confirm_email_entry_field"
    And I entered "02011118908" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NT" in "postcode_entry_field"
    And I click on "continue_button"
    And I should see Page Heading "Assign user roles" at "uar_assign_role_page_heading"
    And I click on "continue_button"
    And I should see Page Heading "Set homepage" at "user_set_homepage_heading"
    And I click on "continue_button"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I click on "cancel_button"
    And I should see "<confirmation_message_header>" as "usr_cancel_confirmation_message_header"
    And I should see "<confirmation_message_body>" as "usr_cancel_confirmation_message_body"
    And I should see "<confirmation_message_action1>" as "usr_cancel_confirmation_message_no_button"
    And I should see "<confirmation_message_action2>" as "usr_cancel_confirmation_message_yes_button"
    And I click on "usr_cancel_confirmation_message_no_button"
    And I should see Page Heading "Check and confirm" at "ucc_check_and_confirm_page_heading"
    And I click on "cancel_button"
    And I should see "<confirmation_message_header>" as "usr_cancel_confirmation_message_header"
    And I click on "usr_cancel_confirmation_message_yes_button"
    Then I should see Page Heading "Mock Landing Page" at "mock_landing_page"

    Examples:
      | confirmation_message_header | confirmation_message_body                                   | confirmation_message_action1 | confirmation_message_action2 |
      | Cancel create a new user?   | Are you sure you want to cancel? All progress will be lost. | No, I don't want to cancel   | Yes, I want to cancel        |

