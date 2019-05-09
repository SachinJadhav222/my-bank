@cmpcbo-1214 @customer @regression @sprint21
Feature: CMPCBO-1214 - Highlight field and error message in case email address already in use
  System should be able to highlight if an email address in use is proposed by client for updating

  Background: Colleague navigated to the edit user page
    Given I navigate to the "edit_user_primary_admin_client_volvo" page

  @cmpcbo1214-01
  Scenario Outline: Client update email address using valid non existing email address
    When I entered "<email>" in "new_email_entry_field"
    And I entered "<email>" in "new_confirm_email_entry_field"
    And I click on "next_button"
    Then I should see "Assign user roles" as "uar_assign_role_page_heading"
    Examples:
      | email              |
      | editemail@test.com |

  @cmpcbo1214-02
  Scenario Outline: Client attempted to update email address with already existing email address
    When I entered "<email>" in "new_email_entry_field"
    And I entered "<email>" in "new_confirm_email_entry_field"
    And I click on "next_button"
    And I could see "edit_popup_title_error_heading" as "<error_title_heading>"
    And I click on "edit_popup_return_button"
    Then I should see new email field "new_email_entry_field" is Highlighted RED
    Examples:
      | email                   |  error_title_heading |
      | FAILEDRSA@FAILEDRSA.com |  Error               |

  @cmpcbo1214-03
  Scenario Outline: Client attempted to update email address with already existing email address, an error message is displayed
    When I entered "<email>" in "new_email_entry_field"
    And I entered "<email>" in "new_confirm_email_entry_field"
    And I click on "next_button"
    And I could see "edit_popup_title_error_heading" as "<error_title_heading>"
    Then I should see Error Message "<error_message>" displayed at "edit_email_error_msg"
    Examples:
      | email                   | error_message                                                               | error_title_heading |
      | FAILEDRSA@FAILEDRSA.com | The email address you entered has already been used to set up another user. | Error               |