@cmpcbo-707 @customer @regression @sprint21
Feature: CMPCBO-707 - Assign home page for client edit user details
  Client Admins can set the landing page for user

  Background: Client navigated to the edit user page
    Given I navigate to the "edit_user_primary_admin_client_volvo" page

  @cmpcbo707-01
  Scenario Outline: Client navigated to the set home page and the account by entity radio button is preselected
    When I could see "user_details_page_heading" as "<user_details_heading>"
    And I click on "next_button"
    And I could see "assign_roles_heading" as "<assign_role_heading>"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    Then I should see Page Heading "<set_home_page_heading>" at "user_set_homepage_heading"
    And I should see "user_set_homepage_accounts_by_entity_radio_button" existed and preselected
    Examples:
      | assign_role_heading | user_details_heading | set_home_page_heading |
      | Assign roles        | User details         | Set homepage          |

  @cmpcbo707-02
  Scenario Outline: Client navigated to the set home page and selected the continue button to see the check and confirm page
    When I could see "user_details_page_heading" as "<user_details_heading>"
    And I click on "next_button"
    And I could see "assign_roles_heading" as "<assign_role_heading>"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I could see "<user_set_homepage_heading>" as "<set_home_page_heading>"
    And I click on "next_button"
    Then I should see the "check_confirm_page_heading" as "<check_confirm_heading>"
    Examples:
      | assign_role_heading | user_details_heading | set_home_page_heading | check_confirm_heading |
      | Assign roles        | User details         | Set homepage          | Check and confirm       |

  @cmpcbo707-03
  Scenario Outline: Client navigated to the set home page and navigated back to the assign role page
    When I could see "user_details_page_heading" as "<user_details_heading>"
    And I click on "next_button"
    And I could see "assign_roles_heading" as "<assign_role_heading>"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I could see "<user_set_homepage_heading>" as "<set_home_page_heading>"
    And I click on "previous_button"
    Then I should see the "assign_roles_heading" as "<assign_role_heading>"
    Examples:
      | assign_role_heading | user_details_heading | set_home_page_heading |
      | Assign roles        | User details         | Set homepage          |

  @cmpcbo707-04
  Scenario Outline:  Client navigate to the User details page and clicked the "Cancel" Button
    When I click on "cancel_create_user_button"
    Then I should see "<cancel_popup_header>" as "edit_cancel_popup_header"
    And I should see "<cancel_popup_body>" as "edit_cancel_popup_body"
    And I should see "<cancel_no_button>" as "usr_cancel_confirmation_message_action1"
    And I should see "<cancel_yes_button>" as "usr_cancel_confirmation_message_action2"
    Examples:
      | cancel_popup_header | cancel_popup_body                                           | cancel_no_button           | cancel_yes_button     |
      | Cancel edit user?   | Are you sure you want to cancel? All progress will be lost. | No, I don't want to cancel | Yes, I want to cancel |

  @cmpcbo707-05
  Scenario Outline:  On the User details page, Client selected the cancel button and
  clicked on No, I don't want to cancel button to return to edit user page
    When I click on "cancel_create_user_button"
    And I click on "usr_cancel_confirmation_message_action1"
    Then I should see "<user_details_heading>" as "user_details_page_heading"
    Examples:
      | user_details_heading |
      | User details         |

  @cmpcbo707-06
  Scenario Outline:  On the User details page, Client selected the cancel button and
  clicked on Yes, I want to cancel button to return to the mock landing page
    When I click on "cancel_create_user_button"
    And I click on "usr_cancel_confirmation_message_action2"
    Then I should see the "edit_user_search_page" as "<mock_search_page>"

    Examples:
      | mock_search_page |
      | Search User      |





