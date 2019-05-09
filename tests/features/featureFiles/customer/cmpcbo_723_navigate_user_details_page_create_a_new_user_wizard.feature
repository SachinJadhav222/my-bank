@cmpcbo-723 @customer @regression @sprint15
Feature: CMPCBO-723 - Navigate to User details page and create a new user Wizard
  While a colleague is creating a user for a CM&P client all fields must be validated to ensure the
  information entered meet the criteria for a user and that there is no duplication specific data
  elements within the client.

  Background:
    Given I navigate to the "volvo_primary_admin" page

  @cmpcbo723-01
  Scenario Outline: Colleague capture the user's details using the Create user form and navigated
  to the Assign roles screen
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "Black" in "firstName_entry_field"
    And I entered "Test" in "lastName_entry_field"
    And I entered "TESTERS" in "username_entry_field"
    And I entered "qtest@test.com" in "email_entry_field"
    And I entered "qtest@test.com" in "confirm_email_entry_field"
    And I entered "02011118902" in "phone_entry_field"
    And I entered "address1" in "address_line1_entry_field"
    And I entered "address2" in "address_line2_entry_field"
    And I entered "address3" in "address_line3_entry_field"
    And I entered "Barking" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 7NX" in "postcode_entry_field"
    And I click on "next_button"
    Then I should see the "assign_roles_heading" as "<assign_roles_header>"

    Examples:
      | assign_roles_header |
      | Assign roles        |

  @cmpcbo723-02
  Scenario Outline: Colleague navigated to the Create user page and select the cancel button
  and the confirmation modal window is displayed.
    When I click on "cancel_create_user_button"
    Then I should see the "usr_cancel_confirmation_message_header" as "<confirmation_message_header>"
    And I should see the "usr_cancel_confirmation_message_body" as "<confirmation_message_body>"
    And I should see the "usr_cancel_confirmation_message_action1" as "<confirmation_message_action1>"
    And I should see the "usr_cancel_confirmation_message_action2" as "<confirmation_message_action2>"

    Examples:
      | confirmation_message_header | confirmation_message_body                                  | confirmation_message_action1 | confirmation_message_action2 |
      | Cancel create a new user    | Are you sure you want to cancel? All progress will be lost | No, I don't want to cancel   | Yes, I want to cancel        |

  @cmpcbo723-03
  Scenario Outline: Colleague navigated to the Create user page, select the cancel button
  and click the No button from the confirmation modal window to return to the create user page.
    When I click on "cancel_create_user_button"
    And I click on "usr_cancel_confirmation_message_action1"
    Then I should see the "create_user_page_heading" as "<create_user_header>"

    Examples:
      | create_user_header |
      | Create a new user  |

  @cmpcbo723-04
  Scenario Outline: Colleague navigated to the Create user page, select the cancel button
  and click the Yes button from the confirmation modal window to return to the mock landing page.
    When I click on "cancel_create_user_button"
    And I click on "usr_cancel_confirmation_message_action2"
    Then I should see the "mock_landing_page" as "<mock_landing_page_header>"

    Examples:
      | mock_landing_page_header |
      | Mock Landing Page        |

