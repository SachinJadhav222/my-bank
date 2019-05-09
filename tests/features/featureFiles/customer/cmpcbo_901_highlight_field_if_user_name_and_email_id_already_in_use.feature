@cmpcbo-901 @customer @regression @sprint18
Feature: CMPCBO-901 - Highlight field in case user name or email id already in use
  The user's name and email ID being created has to be unique and Customer should be warned if either of these are already in use.

  @cmpcbo901-01
  Scenario Outline: CMP Customer Admin types a unique Username and email in Create User page (Create User by Client journey) and navigated
  to the check and confirm page
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<username>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I click on "next_button"
   # And I select by index 1 the "uar_select_business_partner"
    #And I select by index 1 the "uar_select_role_profile"
    And I select by Index "2" from the dropdown "uar_select_business_partner"
    And I select by Index "2" from the dropdown "uar_select_role_profile"
    And I click on "next_button"
    When I click on "next_button"
    Then I could see "create_user_page_heading" as "Create a new user"
    Examples:
      | title | fname   | lname | username         | email                              |  phone        | address1 | address2 | town   | country   |
      | Dr    | Francis | Bran  | TESTUSERPRAKYA11 | TESTUSERPRAKYA11@TESTUSERPRAKYA.com |  020367540789 | address1 | address2 | Bamuda | Australia |

  @cmpcbo901-02
  Scenario Outline: CMP Customer Admin types non unique Username in Create User page (Create User by Client journey) and attempted to navigated
  to the check and confirm page
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<username>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    When I click on "next_button"
    Then I should see "username_entry_field" outline is Highlighted RED color
    Examples:
      | title | fname | lname | username  | email               |  phone        | address1 | address2 | town   | country   |
      | Dr    | Ben   | Bruce | FAILEDRSA | silaja@FAILEDRSA.com |  020367540600 | address1 | address2 | Bamuda | Australia |

  @cmpcbo901-03
  Scenario Outline: CMP Customer Admin types non unique email address in Create User page (Create User by Client journey) and attempted to navigated
  to the check and confirm page
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<username>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    When I click on "next_button"
    Then I should see "email_entry_field" outline is Highlighted RED color
    Examples:
      | title | fname | lname | username  | email                  |  phone        | address1 | address2 | town   | country   |
      | Dr    | Ben   | Bruce | FAILEDRSA | FAILEDRSA@FAILEDRSA.com |  020367540611 | address1 | address2 | Bamuda | Australia |

    #Reference data from cmpcbo-1013