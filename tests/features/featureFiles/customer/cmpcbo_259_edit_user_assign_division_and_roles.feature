@cmpcbo-259 @customer @regression @sprint21
Feature: CMPCBO-259 - Assign user role to division and role preselect user role checkbox
  Client Admins can amend the User Details using the same fields that were used in the Create User.
  The assignment of Division and Role Profile will be restricted base on where the Client Admin is assigned within the hierarchy

  Background: Colleague navigated to the create new user page and captured the user's details
    Given I navigate to the "edit_user_primary_admin_client_volvo" page

  @cmpcbo259-01
  Scenario Outline: Colleague navigated to the Assign user role page and saw the Cash Management and Payments coarse grain checkbox preselected
    When I could see "user_details_page_heading" as "<user_details_heading>"
    And I click on "next_button"
    Then I could see "assign_roles_heading" as "<assign_role_heading>"
    And the Cash management and payments coarse grain role "ocb_checkbox" existed and uncheckable
    Examples:
      | assign_role_heading | user_details_heading |
      | Assign roles        | User details         |

  @cmpcbo259-02
  Scenario Outline: Colleague navigated to the Assign user role page and saw the Cash Management and Payments coarse grain checkbox and de-selectable
    When I could see "user_details_page_heading" as "<user_details_heading>"
    And I click on "next_button"
    Then I could see "assign_roles_heading" as "<assign_role_heading>"
    And the Cash management and payments coarse grain role "ocb_checkbox" existed and uncheckable
    Examples:
      | assign_role_heading | user_details_heading |
      | Assign roles        | User details         |

  @cmpcbo259-03
  Scenario Outline: Colleague navigated to the Assign user role page and select division to
  display an entity / division based on client admins position in organisational hierarchy
    When I could see "user_details_page_heading" as "<user_details_heading>"
    And I click on "next_button"
    And I could see "assign_roles_heading" as "<assign_role_heading>"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    Then  I should see "uar_description_label" is visible & displayed
    Examples:
      | assign_role_heading | user_details_heading |
      | Assign roles        | User details         |

  @cmpcbo259-04
  Scenario Outline: Colleague navigated to the Assign user role page, assigned the business partner and role and, navigate to the set home page
    When I could see "user_details_page_heading" as "<user_details_heading>"
    And I click on "next_button"
    And I could see "assign_roles_heading" as "<assign_role_heading>"
    And I select by Index "1" from the dropdown "uar_select_business_partner"
    And I select by Index "1" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    Then I should see Page Heading "<set_homepage_heading>" at "user_set_homepage_heading"
    Examples:
      | assign_role_heading | user_details_heading | set_homepage_heading |
      | Assign roles        | User details         | Set homepage         |

  @cmpcbo259-05
  Scenario Outline: Colleague navigated to the Assign user role page and navigate back to the user details page with user's details displayed
    When I could see "user_details_page_heading" as "User details"
    And I click on "next_button"
    And I could see "assign_roles_heading" as "Assign roles"
    And I click on "previous_button"
    And I could see "edit_user_heading" as "<edit_user_page_title>"
    Then I should see text field "title_entry_field" displayed as "<title>"
    And I should see text field "firstName_entry_field" displayed as "<f_name>"
    And I should see text field "lastName_entry_field" displayed as "<l_name>"
    And I should see "username_readonly" displayed as "<user_name>"
    And I should see "email_readonly" displayed as "<email>"
    And I should see text field "phone_entry_field" displayed as "<telephone>"
    And I should see text field "address_line1_entry_field" displayed as "<address1>"
    And I should see text field "address_line2_entry_field" displayed as "<address2>"
    And I should see text field "town_entry_field" displayed as "<town_city>"
    And I should see text field "postcode_entry_field" displayed as "<postcode>"
    And I should see "security_id_device_label" displayed as "<security_id_device_label>"
    Examples:
      | edit_user_page_title | title | f_name | l_name | user_name        | email       | telephone     | address1   | address2   | town_city  | postcode | security_id_device_label |
      | Edit User            | Mr    | Alan   | Mask   | TESTUSERPRAKYA11 | phi@phi.com | 0434987534665 | address 12 | address 22 | Manchester | PA9 6FH  | Security device ID       |

  @cmpcbo259-06
  Scenario Outline: Colleague navigated to the Assign user role page and click the cancel button to see the modal window displayed
    When I could see "user_details_page_heading" as "User details"
    And I click on "next_button"
    And I could see "assign_roles_heading" as "Assign roles"
    And I click on "cancel_create_user_button"
    Then I should see "<cancel_popup_header>" as "edit_cancel_popup_header"
    And I should see "<cancel_popup_body>" as "edit_cancel_popup_body"
    And I should see "<cancel_no_button>" as "usr_cancel_confirmation_message_action1"
    And I should see "<cancel_yes_button>" as "usr_cancel_confirmation_message_action2"
    Examples:
      | cancel_popup_header | cancel_popup_body                                           | cancel_no_button           | cancel_yes_button     |
      | Cancel edit user?   | Are you sure you want to cancel? All progress will be lost. | No, I don't want to cancel | Yes, I want to cancel |

  @cmpcbo259-07
  Scenario Outline:  On the Assign roles page, user select the cancel button and click on No, I don't want to cancel button to return to edit user page
    When I click on "cancel_create_user_button"
    And I click on "usr_cancel_confirmation_message_action1"
    Then I should see "<user_details_heading>" as "user_details_page_heading"
    Examples:
      | user_details_heading |
      | User details         |

  @cmpcbo259-08
  Scenario Outline:  On the Assign roles page, user select the cancel button and click on Yes, I want to cancel button to return to the search mock landing page
    When I click on "cancel_create_user_button"
    And I click on "usr_cancel_confirmation_message_action2"
    Then I should see the "edit_user_search_page" as "<mock_search_page>"

    Examples:
      | mock_search_page |
      | Search User      |









