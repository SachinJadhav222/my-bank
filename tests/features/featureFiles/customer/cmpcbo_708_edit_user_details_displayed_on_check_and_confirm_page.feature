@cmpcbo-708 @customer @regression @sprint22
Feature: CMPCBO-708 - Edit User Check and confirm entered user details on check and confirm page
  Client Admin reviews the information that has been amended during the Edit User function and
  can go back to any page to review and edit further.

  Background: Client navigated to the check and confirm page
    Given I navigate to the "edit_user_primary_admin_client_volvo" page
    And I click on "next_button"
    And I click on "next_button"
    And I click on "next_button"

  @cmpcbo708-01
  Scenario Outline: Client navigated to the check and confirm page and the user's details' field labels are correctly displayed
    When I could see "<check_confirm_heading>" as "check_confirm_page_heading"
    Then I should see "user_name_label" displayed as "Name"
    And I should see "username_label" displayed as "Username"
    And I should see "user_email_label" displayed as "Email"
    And I should see "user_job_title_label" displayed as "Job title"
    And I should see "user_telephone_label" displayed as "Telephone number"
    And I should see "user_address_label" displayed as "Address"
    And I should see "user_security_device_label" displayed as "Security device ID"
    And I should see "cash_management_and_payments_role_label" displayed as "Cash management and payments role"
    And I should see "cash_management_and_payments_entity_label" displayed as "Cash management and payments entity / division"
    And I should see "cash_management_and_payments_role_profile_label" displayed as "Cash management and payments role profile"
    And I should see "assign_user_role_description_label" displayed as "Description"
    And I should see "selected_home_page_label" displayed as "Selected homepage"
    And I should see "homepage_description_label" displayed as "Description"
    Examples:
      | check_confirm_heading |
      | Check and confirm     |

  @cmpcbo708-02
  Scenario Outline: Client navigated to the check and confirm page and the user's details' section are displayed in read only format
    When I could see "<check_confirm_heading>" as "check_confirm_page_heading"
    Then I should see "user_client_name_readonly" displayed as "<name>"
    And I should see "username_readonly2" displayed as "<username>"
    And I should see "user_email_readonly" displayed as "<email>"
    And I should see "user_job_title_readonly" displayed as "<job_title>"
    And I should see "user_telephone_readonly" displayed as "<telephone>"
    And I should see "user_address1_readonly" displayed as "<address1>"
    And I should see "user_address2_readonly" displayed as "<address2>"
    And I should see "user_address3_readonly" displayed as "<address3>"
    And I should see "user_town_readonly" displayed as "<town>"
    And I should see "user_postcode_readonly" displayed as "<postcode>"
    And I should see "user_country_readonly" displayed as "<country>"
    And I should see "user_security_device_readonly" displayed as "<security_device>"
    Examples:
      | check_confirm_heading | name         | username         | email       | job_title          | telephone     | address1   | address2   | address3   | town       | postcode | country        | security_device  |
      | Check and confirm     | Mr Alan Mask | TESTUSERPRAKYA11 | phi@phi.com | Software Developer | 0434987534665 | address 12 | address 22 | address 32 | Manchester | PA9 6FH  | United Kingdom | ●●●●●●●●●●●54362 |

  @cmpcbo708-03
  Scenario Outline: Client navigated to the check and confirm page and the assign user's role details' section are displayed in read only format
    When I could see "<check_confirm_heading>" as "check_confirm_page_heading"
    Then I should see "cash_management_and_payments_role" displayed as "<cash_mgt_role>"
    And I should see "cash_management_and_payments_entity" displayed as "<cash_mgt_entity>"
    And I should see "cash_management_and_payments_role_profile" displayed as "<cash_mgt_role_profile>"
    And I should see "assign_user_role_description_readonly" displayed as "<description>"
    Examples:
      | check_confirm_heading | cash_mgt_role | cash_mgt_entity | cash_mgt_role_profile | description                                                                                       |
      | Check and confirm     | Yes           | Volvo Group     | Volvo primary profile | Administration functions including create and maintain users. Reporting and statements functions. |

  @cmpcbo708-04
  Scenario Outline: Client navigated to the check and confirm page and the user's home page details' section are displayed in read only format
    When I could see "<check_confirm_heading>" as "check_confirm_page_heading"
    Then I should see "selected_home_page_readonly" displayed as "<selected_home_page>"
    And I should see "homepage_description_readonly" displayed as "<home_page_description>"

    Examples:
      | home_page_description                                                         | check_confirm_heading | selected_home_page |
      | This page displays a summary of your accounts and balances grouped by entity. | Check and confirm     | Accounts by entity |

  @cmpcbo708-05
  Scenario Outline: Client navigated to the set home page and selected the continue button to see the check and confirm page
    When I could see "<check_confirm_heading>" as "check_confirm_page_heading"
    Then the "back_button" is visible
    And the "cancel_button" is visible
    And the "confirm_button" is visible

    Examples:
      | check_confirm_heading |
      | Check and confirm     |




