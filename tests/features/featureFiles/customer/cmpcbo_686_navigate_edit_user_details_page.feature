@cmpcbo-686 @customer @regression @sprint21
Feature: CMPCBO-686 - Navigate Edit user details page
  On the Edit User page, client should be provided with options to continue, or cancel the progress on Edit user details page

  @cmpcbo686-01
  Scenario Outline:  Navigation Forward: Continue Button
    Given I navigate to the "edit_user_primary_admin_client_volvo" page
    When I entered "<email>" in "new_email_entry_field"
    And I entered "<email2>" in "new_confirm_email_entry_field"
    And I click on "next_button"
    Then I should see "Assign user roles" as "uar_assign_role_page_heading"
    Examples:
      | email               | email2              |
      | editemail2@test.com | editemail2@test.com |

  @cmpcbo686-02
  Scenario Outline:  Navigation Cancellation: "Cancel" Button
    Given I navigate to the "edit_user_primary_admin_client_volvo" page
    When I click on "cancel_create_user_button"
    Then I should see "<cancel_popup_header>" as "edit_cancel_popup_header"
    And I should see "<cancel_popup_body>" as "edit_cancel_popup_body"
    And I should see "<cancel_no_button>" as "usr_cancel_confirmation_message_action1"
    And I should see "<cancel_yes_button>" as "usr_cancel_confirmation_message_action2"
    Examples:
      | cancel_popup_header | cancel_popup_body                                           | cancel_no_button           | cancel_yes_button     |
      | Cancel edit user?   | Are you sure you want to cancel? All progress will be lost. | No, I don't want to cancel | Yes, I want to cancel |

  @cmpcbo686-03
  Scenario Outline:  User select, the cancel button and click on No, I don't want to cancel button to return to edit user page
    Given I navigate to the "edit_user_primary_admin_client_volvo" page
    When I click on "cancel_create_user_button"
    And I click on "usr_cancel_confirmation_message_action1"
    Then I should see "<user_details_heading>" as "user_details_page_heading"
    Examples:
      | user_details_heading |
      | User details         |

  @cmpcbo686-04
  Scenario Outline:  User select, the cancel button and click on Yes, I want to cancel button to return to the mock landing page
    Given I navigate to the "edit_user_primary_admin_client_volvo" page
    When I click on "cancel_create_user_button"
    And I click on "usr_cancel_confirmation_message_action2"
    Then I should see the "edit_user_search_page" as "<mock_search_page>"

    Examples:
      | mock_search_page |
      | Search User      |
