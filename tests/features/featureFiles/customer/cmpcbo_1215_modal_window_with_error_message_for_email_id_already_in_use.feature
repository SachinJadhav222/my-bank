@cmpcbo-1215 @customer @regression @sprint21
Feature: CMPCBO-1215 - Modal window with error message for Email ID already in use
  Error message window to be shown to Client while trying to update email address which already exists

  Background: Colleague navigated to the edit user page
    Given I navigate to the "edit_user_primary_admin_client_volvo" page

  @cmpcbo1215-01
  Scenario Outline: Show modal window when email address is already in use
    When I entered "<email>" in "new_email_entry_field"
    And I entered "<email>" in "new_confirm_email_entry_field"
    And I click on "next_button"
    Then I should see the "edit_popup_title_error_heading" as "<error_title_heading>"
    Examples:
      | email                   |  error_title_heading |
      | FAILEDRSA@FAILEDRSA.com |  Error               |

  @cmpcbo1215-02
  Scenario Outline: Return to Edit user details page  - non unique email address
    When I entered "<email>" in "new_email_entry_field"
    And I entered "<email>" in "new_confirm_email_entry_field"
    And I click on "next_button"
    And I could see "edit_popup_title_error_heading" as "<error_title_heading>"
    And I click on "edit_popup_return_button"
    Then I should see the "user_details_page_heading" as "<user_details_heading>"
    Examples:
      | email                   |  error_title_heading | user_details_heading |
      | FAILEDRSA@FAILEDRSA.com |  Error               | User details         |

  @cmpcbo1215-03
  Scenario Outline: email address entered is in use - message
    When I entered "<email>" in "new_email_entry_field"
    And I entered "<email>" in "new_confirm_email_entry_field"
    And I click on "next_button"
    Then I should see the "edit_popup_title_error_heading" as "<error_title_heading>"
    And I should see the "edit_popup_error_msg_body1" as "<error_message_body1>"
    And I should see the "edit_popup_error_msg_body2" as "<error_message_body2>"
    Examples:
      | email                   |  error_message_body1                                                         | error_message_body2                                      | error_title_heading |
      | FAILEDRSA@FAILEDRSA.com |  The email address you entered has already been used to set up another user. | Please enter an alternative email address and try again. | Error               |