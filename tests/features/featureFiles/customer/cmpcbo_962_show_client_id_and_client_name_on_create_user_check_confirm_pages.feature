@cmpcbo-962 @customer @regression @sprint17
Feature: CMPCBO-962 - Show Client ID and Client name on Create User and Check and Confirm pages
  Client ID & Client name to be shown at the top of Create User page and Check and confirm page

  @cmpcbo962-01
  Scenario Outline: CMP Customer primary admin (volvo group) navigated to the create client page and saw
  the Client ID and Client name displayed on top of Create User page

    Given I navigate to the "volvo_primary_admin" page
    When I could see "create_user_page_heading" as "Create a new user"
    Then I should see the "usr_client_id" as "<client_id>"
    And I should see the "usr_client_name" as "<client_name>"

    Examples:
      | client_id  | client_name |
      | 4444444444 | Volvo       |


  @cmpcbo962-02
  Scenario Outline: CMP Customer admin (volvo group) navigated to the create Check and confirm page and saw
  the Client ID and Client name on top of Check and confirm page
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "<firstname>" in "firstName_entry_field"
    And I entered "<lastname>" in "lastName_entry_field"
    And I entered "<username>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "2" from the dropdown "uar_select_business_partner"
    And I select by Index "2" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I click on "next_button"
    And I could see "create_user_page_heading" as "Create a new user"
    Then I should see the "usr_client_id" as "<client_id>"
    And I should see the "usr_client_name" as "<client_name>"

    Examples:
      | client_id  | client_name | firstname | lastname | username | email               |  phone       | address1 | address2 | town   | country        | postcode |
      | 4444444444 | Volvo       | Roy       | Fox      | ROYFOX   | rftest01@bddtest.com |  08065420671 | 12 Fox   | Sheldon  | Harrow | United Kingdom | HA12 1AD |

  @cmpcbo962-03
  Scenario Outline: CMP Customer admin (shell ltd) navigated to the create client page and saw
  the Client ID and Client name displayed on top of Create User page
    Given I navigate to the "shell_primary_admin"" page
    When I navigate to the "shell_primary_admin" page
    And I could see "create_user_page_heading" as "Create a new user"
    Then I should see the "usr_client_id" as "<client_id>"
    And I should see the "usr_client_name" as "<client_name>"

    Examples:
      | client_id  | client_name |
      | 5555555555 | Shell       |


  @cmpcbo962-04
  Scenario Outline: CMP Customer admin navigated to the create Check and confirm page and saw
  the Client ID and Client name on top of Check and confirm page
    Given I navigate to the "shell_primary_admin" page
    When I navigate to the "shell_primary_admin" page
    And I select by Text "Dr" from the dropdown "title_entry_field"
    And I entered "<firstname>" in "firstName_entry_field"
    And I entered "<lastname>" in "lastName_entry_field"
    And I entered "<username>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "next_button"
    And I select by Index "2" from the dropdown "uar_select_business_partner"
    And I select by Index "2" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    And I click on "next_button"
    And I could see "create_user_page_heading" as "Create a new user"
    Then I should see the "usr_client_id" as "<client_id>"
    And I should see the "usr_client_name" as "<client_name>"

    Examples:
      | client_id  | client_name | firstname | lastname | username | email               |  phone       | address1    | address2 | town   | country        | postcode |
      | 5555555555 | Shell       | Wendy     | Hill     | WEHILL   | whtest01@bddtest.com |  08065670671 | 11 Ley Road | Sheldon  | Harrow | United Kingdom | HA12 3AD |
