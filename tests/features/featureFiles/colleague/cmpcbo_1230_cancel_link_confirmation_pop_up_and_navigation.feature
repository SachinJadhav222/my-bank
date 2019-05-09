@cmpcbo-1230 @client @createClientMVP @regression @sprint20
Feature: CMPCBO-1230 - Cancel link confirmation pop up and navigation
  Cancel link - confirmation pop up and navigation - colleague journey

  @cmpcbo1230-01
  Scenario Outline: Client navigate to create client page and click the Cancel Button
    Given I navigate to the "colleague_create_client_url" page
    When I could see "create_client_page_heading" as "Create a new client"
    And  I click on "cancel_button"
    Then I should see a "cancel_create_client_popup_header" as "<confirmation_header>"
    And I should see a "cancel_create_client_popup_body" as "<confirmation_message>"
    And I should see a "cancel_create_client_no_button" as "<confirmation_no_btn>"
    And I should see a "cancel_create_client_yes_button" as "<confirmation_yes_btn>"

    Examples:
      | confirmation_header         | confirmation_message                                        | confirmation_no_btn        | confirmation_yes_btn  |
      | Cancel create a new client? | Are you sure you want to cancel? All progress will be lost. | No, I don't want to cancel | Yes, I want to cancel |

  @cmpcbo1230-02
  Scenario Outline: Client navigate to create client page, captured client details and navigate to the service package page and click the Cancel Button
    Given I navigate to the "colleague_create_client_url" page
    When I entered "Volvo UK" in "client_name_entry_field"
    And I entered "8125489523" in "bp_id_entry_field"
    And I entered "5160708765" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "FA2 2DA" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And  I click on "cancel_button"
    Then I should see a "cancel_create_client_popup_header" as "<confirmation_header>"
    And I should see a "cancel_create_client_popup_body" as "<confirmation_message>"
    And I should see a "cancel_create_client_no_button" as "<confirmation_no_btn>"
    And I should see a "cancel_create_client_yes_button" as "<confirmation_yes_btn>"

    Examples:
      | confirmation_header         | confirmation_message                                        | confirmation_no_btn        | confirmation_yes_btn  |
      | Cancel create a new client? | Are you sure you want to cancel? All progress will be lost. | No, I don't want to cancel | Yes, I want to cancel |

  @cmpcbo1230-03
  Scenario Outline: colleague captured the primary admin and second admin details and click the cancel button
    #First Admin
    Given I navigate to the "colleague_create_client_url" page
    When I entered "Volvo UK" in "client_name_entry_field"
    And I entered "8125489523" in "bp_id_entry_field"
    And I entered "5160708765" in "cmd_id_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "FA2 2DA" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "next_button"
    And I could see "create_client_page_heading" as "Create a new client"
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<job_title>" in "jobTitle_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email2>" in "confirm_email_entry_field"
    And I entered "<phone_no>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<address3>" in "address_line3_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "next_button"
    And I click on "popup_second_admin_confirmation"
    And I should see Sub Heading "Second primary administrator details" at "second_primary_admin_details_heading"
    #Secondary Admin
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Ben" in "firstName_entry_field"
    And I entered "Andraud" in "lastName_entry_field"
    And I entered "QEOne" in "jobTitle_entry_field"
    And I entered "bandraud0@bddtest.com" in "email_entry_field"
    And I entered "bandraud0@bddtest.com" in "confirm_email_entry_field"
    And I entered "07102341798" in "phone_entry_field"
    And I entered "Merrick" in "address_line1_entry_field"
    And I entered "London" in "address_line2_entry_field"
    And I entered "Church End" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "CB4 5RT" in "postcode_entry_field"
    And I click on "next_button"
    And  I click on "cancel_button"
    Then I should see a "cancel_create_client_popup_header" as "<confirmation_header>"
    And I should see a "cancel_create_client_popup_body" as "<confirmation_message>"
    And I should see a "cancel_create_client_no_button" as "<confirmation_no_btn>"
    And I should see a "cancel_create_client_yes_button" as "<confirmation_yes_btn>"
    Examples:
      | title | fname | lname | job_title  | email             | email2            | phone_no    | address1 | address2 | address3 | town    | postcode | confirmation_header         | confirmation_message                                        | confirmation_no_btn        | confirmation_yes_btn  |

      | Mr    | Black | Brown | Consultant | testingP@test.com | testingP@test.com | 02182326677 | address4 | address5 | address6 | Barking | IG11 7NX | Cancel create a new client? | Are you sure you want to cancel? All progress will be lost. | No, I don't want to cancel | Yes, I want to cancel |

  @cmpcbo1230-04
  Scenario Outline: Client navigate to create client page, after selecting the cancel button, and click on "No, I don't want to cancel" to return to the current page
    Given I navigate to the "colleague_create_client_url" page
    When I could see "create_client_page_heading1" as "<client_details_header>"
    And  I click on "cancel_button"
    And  I click on "cancel_create_client_no_button"
    Then I should see a "create_client_page_heading1" as "<client_details_header>"

    Examples:
      | client_details_header |
      | Client details        |

  @cmpcbo1230-05
  Scenario Outline: Client navigate to create client page, after selecting the cancel button, and click on "Yes, I want to cancel" to return to the mock landing page
    Given I navigate to the "colleague_create_client_url" page
    And I SET the LocalStorage referringUrl to url: "colleague_mock_landing_page"
    And I could see "create_client_page_heading1" as "<client_details_header>"
    And  I click on "cancel_button"
    And  I click on "cancel_create_client_yes_button"
    Then I should see a "mock_landing_page" as "<mock_landing_page>"

    Examples:
      | client_details_header | mock_landing_page |
      | Client details        | Mock Landing Page |

