#@cmpcbo-892 @client @regression @sprint17?
#Feature: CMPCBO-892 - Display loading status create CLIENT journey
#
#  Background: Colleague navigated to the create client page
#    Given I navigate to the "create_client" page
#    And I navigate to the "create_client" page
#
#
#  @cmpcbo892-01
#  Scenario Outline: Display loading status on "Client Details" page
#    Then I should see Page Heading "Client details" at "create_client_page_heading1"
#    When I entered "Volvo UK" in "client_name_entry_field"
#    And I entered "8025489523" in "bp_id_entry_field"
#    And I entered "11223344" in "cmd_id_entry_field"
#    And I entered "Address1" in "address_line1_entry_field"
#    And I entered "Address2" in "address_line2_entry_field"
#    And I entered "New Town" in "town_entry_field"
#    And I select "Afghanistan" from the "country_entry_field"
#    And I click on the "next_button"
#    #Then I should see a "<spinner_message>" in Page Source
#    #Then I should see a "<spinner_message>" in Page Source
#   #Then I should see a "client_page_loading_spinner" as "<spinner_message>"
#   Then I should see a "client_page_loading_spinner" as "<spinner_message>" in Page Source
#    Examples:
#      | spinner_message                         |
#      | your request is processing, please wait |
#
#
#  @cmpcbo892-02
#  Scenario Outline: Display loading status on "Select Service Package" page
#    Then I should see Page Heading "Client details" at "create_client_page_heading1"
#    When I entered "Volvo UK" in "client_name_entry_field"
#    And I entered "8025489523" in "bp_id_entry_field"
#    And I entered "11223344" in "cmd_id_entry_field"
#    And I entered "Address1" in "address_line1_entry_field"
#    And I entered "Address2" in "address_line2_entry_field"
#    And I entered "New Town" in "town_entry_field"
#    And I select "Afghanistan" from the "country_entry_field"
#    And I click on the "next_button"
#    Then I should see Page Heading "Select service package" as "select_service_page_heading"
#    And I select by Index "1" from the dropdown "service_package_name"
#    And I click on the "next_button"
#    Then I should see a "client_page_loading_spinner" as "<spinner_message>"
#
#    Examples:
#      | spinner_message                         |
#      | your request is processing, please wait |
#
#  @cmpcbo892-03
#  Scenario Outline: Display loading status on "Primary admin" page
#    Then I should see Page Heading "Client details" at "create_client_page_heading1"
#    When I entered "Volvo UK" in "client_name_entry_field"
#    And I entered "8025489523" in "bp_id_entry_field"
#    And I entered "11223344" in "cmd_id_entry_field"
#    And I entered "Address1" in "address_line1_entry_field"
#    And I entered "Address2" in "address_line2_entry_field"
#    And I entered "New Town" in "town_entry_field"
#    And I select "Afghanistan" from the "country_entry_field"
#    And I click on the "next_button"
#    Then I should see Page Heading "Select service package" as "select_service_page_heading"
#    And I select by Index "1" from the dropdown "service_package_name"
#    And I click on the "next_button"
#    Then I should see Page Heading "Primary admin" as "primary_admin_page_heading"
#    #primary admin
#    And I select by Text "Mr" from the dropdown "title_entry_field"
#    And I entered "DanielOne" in "firstName_entry_field"
#    And I entered "JonesOne" in "lastName_entry_field"
#    And I entered "QEOne" in "jobTitle_entry_field"
#    And I entered "testOne@test.com" in "email_entry_field"
#    And I entered "testOne@test.com" in "confirm_email_entry_field"
#    And I entered "098765433111" in "phone_entry_field"
#    And I entered "2FA" in "address_line1_entry_field"
#    And I entered "London" in "address_line2_entry_field"
#    And I entered "New Town" in "town_entry_field"
#    And I select "Afghanistan" from the "country_entry_field"
#    And I click on "next_button"
#    And I click on "popup_second_admin_confirmation"
#    And I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_heading"
#    #Secondary admin
#    And I select by Text "Dr" from the dropdown "title_entry_field"
#    And I entered "DanielTWO" in "firstName_entry_field"
#    And I entered "JonesTWO" in "lastName_entry_field"
#    And I entered "QEOne" in "jobTitle_entry_field"
#    And I entered "testTWO@test.com" in "email_entry_field"
#    And I entered "testTWO@test.com" in "confirm_email_entry_field"
#    And I entered "098765433222" in "phone_entry_field"
#    And I entered "2FA" in "address_line1_entry_field"
#    And I entered "London road" in "address_line2_entry_field"
#    And I entered "New Town" in "town_entry_field"
#    And I select "Afghanistan" from the "country_entry_field"
#    When I click on "next_button"
#    Then I should see a "client_page_loading_spinner" as "<spinner_message>"
#
#    Examples:
#      | spinner_message                         |
#      | your request is processing, please wait |
#
#
#  @cmpcbo892-04
#  Scenario Outline: Display loading status on "Check and confirm" page
#    Then I should see Page Heading "Client details" at "create_client_page_heading1"
#    When I entered "Volvo UK" in "client_name_entry_field"
#    And I entered "8025489523" in "bp_id_entry_field"
#    And I entered "11223344" in "cmd_id_entry_field"
#    And I entered "Address1" in "address_line1_entry_field"
#    And I entered "Address2" in "address_line2_entry_field"
#    And I entered "New Town" in "town_entry_field"
#    And I select "Afghanistan" from the "country_entry_field"
#    And I click on the "next_button"
#    Then I should see Page Heading "Select service package" as "select_service_page_heading"
#    And I select by Index "1" from the dropdown "service_package_name"
#    And I click on the "next_button"
#    Then I should see Page Heading "Primary admin" as "primary_admin_page_heading"
#    #primary admin
#    And I select by Text "Mr" from the dropdown "title_entry_field"
#    And I entered "DanielOne" in "firstName_entry_field"
#    And I entered "JonesOne" in "lastName_entry_field"
#    And I entered "QEOne" in "jobTitle_entry_field"
#    And I entered "testOne@test.com" in "email_entry_field"
#    And I entered "testOne@test.com" in "confirm_email_entry_field"
#    And I entered "098765433111" in "phone_entry_field"
#    And I entered "2FA" in "address_line1_entry_field"
#    And I entered "London road" in "address_line2_entry_field"
#    And I entered "New Town" in "town_entry_field"
#    And I select "Afghanistan" from the "country_entry_field"
#    And I click on "next_button"
#    And I click on "popup_second_admin_confirmation"
#    And I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_heading"
#    #Secondary admin
#    And I select by Text "Dr" from the dropdown "title_entry_field"
#    And I entered "DanielTWO" in "firstName_entry_field"
#    And I entered "JonesTWO" in "lastName_entry_field"
#    And I entered "QEOne" in "jobTitle_entry_field"
#    And I entered "testTWO@test.com" in "email_entry_field"
#    And I entered "testTWO@test.com" in "confirm_email_entry_field"
#    And I entered "098765433222" in "phone_entry_field"
#    And I entered "2FA" in "address_line1_entry_field"
#    And I entered "London road" in "address_line2_entry_field"
#    And I entered "New Town" in "town_entry_field"
#    And I select "Afghanistan" from the "country_entry_field"
#    When I click on "next_button"
#    Then I should see Page Heading "Check and confirm" as "check_confirm_page_heading"
#    When I click on "next_button"
#    Then I should see a "client_page_loading_spinner" as "<spinner_message>"
#
#    Examples:
#      | spinner_message                         |
#      | your request is processing, please wait |
#
#
#
