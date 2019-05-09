@cmpcbo-54 @customer @regression @sprint09
Feature: CMPCBO-54 - Colleague capture user details
  I want to be able to capture the new CBO user details, so that a new user that is created within a CM&P customer
  when activated, will be able to access the channel.

  @cmpcbo54-01
  Scenario Outline: While creating a new user, when I navigated to the create a new user page, I should see the client details.
    Given I navigate to the "volvo_primary_admin" page
    When I am on the "usr_user_details_heading" displayed as "<user_details_page_title>"
    Then I should see "user_details_id" displayed as "<user_id>"
    And I should see "user_details_name" displayed as "<user_name>"

    Examples:
      | user_id    | user_name   | user_details_page_title |
      | 3234567891 | Volvo Group | User details            |

  @cmpcbo54-02
  Scenario Outline: While creating a new user, when the mandatory title field is left blank an error message is displayed.
    Given I navigate to the "volvo_primary_admin" page
    When I set the "title_entry_field" empty by clicking on "title_label"
    Then I should see "title_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message |
      | Choose the user’s title     |

  @cmpcbo54-03
  Scenario Outline: While creating a new user, when valid title is selected in turn, the entry field turns green at each selection.
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "<salutation_title>" from the dropdown "title_entry_field"
    Then I should see Mandatory field "title_entry_field" is Highlighted GREEN
    Examples:
      | salutation_title |
      | Mr               |
      | Mrs              |
      | Miss             |
      | Ms               |
      | Dr               |
      | Professor        |
      | Lord             |
      | Lady             |
      | Honourable       |
      | Dame             |
      | Sir              |
      | Major            |
      | Sergeant         |
      | Commander        |
      | Brigadier        |
      | Reverend         |
      | Father           |

  @cmpcbo54-04
  Scenario Outline: While creating a new user, when the mandatory first name entry field is left blank an error message is displayed.
    Given I navigate to the "volvo_primary_admin" page
    When I set the "firstName_entry_field" empty by clicking on "lastName_entry_field"
    Then I should see "firstName_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message |
      | Enter the user’s first name |

  @cmpcbo54-05
  Scenario Outline: While creating a new user, when the mandatory last name entry field is left blank an error message is displayed.
    Given I navigate to the "volvo_primary_admin" page
    When I set the "lastName_entry_field" empty by clicking on "firstName_entry_field"
    Then I should see "lastName_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message |
      | Enter the user’s last name  |

  @cmpcbo54-06
  Scenario Outline: While creating a new user, when the mandatory username entry field is left blank an error message is displayed.
    Given I navigate to the "volvo_primary_admin" page
    When I set the "username_entry_field" empty by clicking on "email_entry_field"
    Then I should see "username_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message |
      | Enter a username            |

  @cmpcbo54-07
  Scenario Outline: While creating a new user, when the mandatory email entry field is left blank an error message is displayed.
    Given I navigate to the "volvo_primary_admin" page
    When I set the "email_entry_field" empty by clicking on "confirm_email_entry_field"
    Then I should see "email_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message    |
      | Enter the user’s email address |

  @cmpcbo54-08
  Scenario Outline: While creating a new user, when the mandatory confirm email entry field is left blank an error message is displayed.
    Given I navigate to the "volvo_primary_admin" page
    When I set the "confirm_email_entry_field" empty by clicking on "jobTitle_entry_field"
    Then I should see "confirm_email_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message            |
      | Enter the user’s correct email address |

  @cmpcbo54-09
  Scenario Outline: While creating a new user, when the mandatory telephone entry field is left blank an error message is displayed.
    Given I navigate to the "volvo_primary_admin" page
    When I set the "phone_entry_field" empty by clicking on "address_line1_entry_field"
    Then I should see "phone_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message       |
      | Enter the user’s telephone number |

  @cmpcbo54-10
  Scenario Outline: While creating a new user, when the mandatory address line 1 entry field is left blank an error message is displayed.
    Given I navigate to the "volvo_primary_admin" page
    When I set the "address_line1_entry_field" empty by clicking on "address_line2_entry_field"
    Then I should see "address_line1_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message                |
      | Enter the first line of the user’s address |

  @cmpcbo54-11
  Scenario Outline: While creating a new user, when the mandatory address line 2 entry field is left blank an error message is displayed.
    Given I navigate to the "volvo_primary_admin" page
    When I set the "address_line2_entry_field" empty by clicking on "address_line3_entry_field"
    Then I should see "address_line2_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message                 |
      | Enter the second line of the user’s address |

  @cmpcbo54-12
  Scenario Outline: While creating a new user, when the mandatory town entry field is left blank an error message is displayed.
    Given I navigate to the "volvo_primary_admin" page
    When I set the "town_entry_field" empty by clicking on "country_entry_field"
    Then I should see "town_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message   |
      | Enter the user’s town or city |

  @cmpcbo54-13
  Scenario Outline: While creating a new user, when the mandatory country entry field is left blank an error message is displayed.
    Given I navigate to the "volvo_primary_admin" page
    When I set the "country_entry_field" empty by clicking on "town_entry_field"
    Then I should see "country_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message |
      | Enter the user’s country    |

  @cmpcbo54-14
  Scenario Outline: While creating a new user, when the country is selected as UK and the mandatory postcode entry field is left blank an error message is displayed.
    Given I navigate to the "volvo_primary_admin" page
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I set the "postcode_entry_field" empty by clicking on "country_entry_field"
    Then I should see "postcode_error_message" displayed as "<invalid_entry_error_message>"

    Examples:
      | invalid_entry_error_message | country        |
      | Enter the user’s postcode   | United Kingdom |

  @cmpcbo54-15
  Scenario Outline: colleague who has access to the Create User function, is able to capture the new CBO user details
    Given I navigate to the "volvo_primary_admin" page
    When I select by Text "<title>" from the dropdown "title_entry_field"
    And I entered "<fname>" in "firstName_entry_field"
    And I entered "<lname>" in "lastName_entry_field"
    And I entered "<user_name>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email2>" in "confirm_email_entry_field"
    And I entered "<phone_no>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<address3>" in "address_line3_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "next_button"
    Then I should see Page Heading "Assign roles" at "assign_roles_heading"


    Examples:
      | title | fname | lname | user_name | email              | email2             | phone_no    | address1 | address2 | address3 | town    | country        | postcode |
      | Mr    | Lee   | Brown | LBROWN    | letesting@test.com | letesting@test.com | 02182326677 | address4 | address5 | address6 | Barking | United Kingdom | IG11 1JD |








