@cmpcbo-250 @customer @regression @sprint15
Feature: CMPCBO-250 - Client Admin capture user details to Set up NEW User
  I as client admin
  want to capture user details
  to setup NEW user

  Background: Colleague navigated to the create new user page
    Given I navigate to the "volvo_primary_admin" page

  @cmpcbo250-01
  Scenario Outline: Mandatory Title entry Field Left Blank and clicked Outside to See Error
    When I scroll to the element "<mandatory_field>"
    And I click on Mandatory Field "<mandatory_field>"
    And I click out of the Box on "create_user_page_heading"
    Then I should see Error Message "<error_message>" displayed at "<error_message_field>"
    Examples:
      | mandatory_field   | error_message           | error_message_field |
      | title_entry_field | Choose the user’s title | title_error_message |

  @cmpcbo250-02
  Scenario Outline: Mandatory Fields Left Blank and clicked Outside to See Error
    When I scroll to the element "<mandatory_field>"
    And I click on Mandatory Field "<mandatory_field>"
    And I click out of the Box on "create_user_page_heading"
    And I scroll to the element "<mandatory_field>"
    Then I should see Error Message "<error_message>" displayed at "<error_message_field>"
    Examples:
      | mandatory_field           | error_message                               | error_message_field         |
      | firstName_entry_field     | Enter the user’s first name                 | firstName_error_message     |
      | lastName_entry_field      | Enter the user’s last name                  | lastName_error_message      |
      | username_entry_field      | Enter a username                            | username_error_message      |
      | email_entry_field         | Enter the user’s email address              | email_error_message         |
      | confirm_email_entry_field | Enter the user’s correct email address      | confirm_email_error_message |
      | phone_entry_field         | Enter the user’s telephone number           | phone_error_message         |
      | address_line1_entry_field | Enter the first line of the user’s address  | address_line1_error_message |
      | address_line2_entry_field | Enter the second line of the user’s address | address_line2_error_message |
      | town_entry_field          | Enter the user’s town or city               | town_error_message          |
      | country_entry_field       | Enter the user’s country                    | country_error_message       |

  @cmpcbo250-03
  Scenario Outline: Title-Valid entry
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

  @cmpcbo250-04
  Scenario Outline: First Name-Invalid Entry
    When I entered "<first_name>" in "firstName_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    And I should see Error Message "<error_message>" displayed at "firstName_error_message"
    Examples:
      | first_name | error_message                                                         |
      | 99Dan      | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | _Don Dyne  | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | Dev_Team   | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |

  @cmpcbo250-05
  Scenario Outline: First Name - Valid Entry
    When I entered "<first_name>" in "firstName_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "firstName_entry_field" is Highlighted GREEN
    Examples:
      | first_name      |
      | Mike            |
      | Mike Jones 2    |
      | mike Jane Jones |

  @cmpcbo250-06
  Scenario Outline: First Name - Max 20 Alpha numeric value displayed
    When I entered "<first_name>" in "firstName_entry_field"
    Then I can only see first "20" character displayed in "firstName_entry_field"
    Examples:
      | first_name                                   |
      | FirstNameMikeMikeMikeMikeMikeMikeDDDddddTTDD |


  @cmpcbo250-07
  Scenario Outline: Last Name - Invalid Entry
    When I entered "<last_name>" in "lastName_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    And I should see Error Message "<error_message>" displayed at "lastName_error_message"
    Examples:
      | last_name   | error_message                                                         |
      | 88LastName  | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | 99-LastName | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | last_name   | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |


  @cmpcbo250-08
  Scenario Outline: Last Name - Valid Entry
    When I entered "<last_name>" in "lastName_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "lastName_entry_field" is Highlighted GREEN
    Examples:
      | last_name      |
      | LastName       |
      | Last Name 2nd  |
      | last name NAME |

  @cmpcbo250-09
  Scenario Outline: Last Name - Max 20 Alpha numeric value displayed
    When I entered "<last_name>" in "lastName_entry_field"
    Then I can only see first "20" character displayed in "lastName_entry_field"
    Examples:
      | last_name                               |
      | LastNameMikeMikeMikeMikeMikeMikeDDDdddd |

  @cmpcbo250-10
  Scenario Outline: User Name - Invalid Entry
    When I entered "<user_name>" in "username_entry_field"
    Then I click out of the Box on "create_user_page_heading"
    And I should see Error Message "<error_message>" displayed at "username_error_message"
    Examples:
      | user_name   | error_message                                                 |
      | 99user_name | This can only contain capital letters and numbers (A-Z, 0-9). |
      | username#   | This can only contain capital letters and numbers (A-Z, 0-9). |
      | USER_NAME   | This can only contain capital letters and numbers (A-Z, 0-9). |


  @cmpcbo250-11
  Scenario Outline: User Name - Valid Entry
    When I entered "<user_name>" in "username_entry_field"
    Then I click out of the Box on "create_user_page_heading"
    Then I should see Mandatory field "username_entry_field" is Highlighted GREEN
    Examples:
      | user_name   |
      | username    |
      | 99999       |
      | 999USERNAME |

  @cmpcbo250-12
  Scenario Outline: User Name - Min 5 Alpha numeric value displayed
    When I entered "<user_name>" in "username_entry_field"
    Then I click out of the Box on "create_user_page_heading"
    And I should see Error Message "<error_message>" displayed at "username_error_message"
    Examples:
      | user_name | error_message                          |
      | ABC       | username must be at least 5 characters |
      | ABCD      | username must be at least 5 characters |

  @cmpcbo250-13
  Scenario Outline: User Name - Max 20 Alpha numeric value displayed
    When I entered "<user_name>" in "username_entry_field"
    Then I can only see first "20" character displayed in "username_entry_field"
    Examples:
      | user_name                                           |
      | USERNAME999USERNAME9999USERNAME88USERNAME99USERNAME |


  @cmpcbo250-14
  Scenario Outline: Job Title-Invalid Entry
    When I entered "<job_title>" in "jobTitle_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    Then I should see Non-Mandatory field "jobTitle_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "jobTitle_error_message"
    Examples:
      | job_title      | error_message                                                         |
      | -£#InvalidJobs | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |


  @cmpcbo250-15
  Scenario Outline: Job Title -Valid Entry
    When I entered "<job_title>" in "jobTitle_entry_field"
    Then I should see Non-Mandatory field "jobTitle_entry_field" is Highlighted GREEN
    Examples:
      | job_title     |
      | valid Jobs 10 |

  @cmpcbo250-16
  Scenario Outline: Job Title -Max 40 Alpha numeric value displayed
    When I entered "<job_title>" in "jobTitle_entry_field"
    Then I can only see first "40" character displayed in "jobTitle_entry_field"
    Examples:
      | job_title                                               |
      | validJobs10validJobs10validJobs10validJobs10validJobs1010validJobs10validJobs10 |

  @cmpcbo250-17
  Scenario Outline: Email - Blank or space in between Entry
    When I entered key stroke "<email>" in "email_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "email_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "email_error_message"
    Examples:
      | email | error_message                                       |
      | space | Neither the first or last character can be a space. |


  @cmpcbo250-18
  Scenario Outline: Email - Invalid Entry
    When I entered "<email>" in "email_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "email_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "email_error_message"
    Examples:
      | email                | error_message                                                                                                                |
      | --a@a.c:             | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | a2@a2.co--           | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | --a@a.c@             | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | my:email@test.com    | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | email@my@test.com    | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | email@my@my.test.com | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |


  @cmpcbo250-19
  Scenario Outline: Email- Valid Entry
    When I entered "<email>" in "email_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "email_entry_field" is Highlighted GREEN
    Examples:
      | email             |
      | test@test.com     |
      | test123@123.co.uk |

  @cmpcbo250-20
  Scenario Outline: Confirm Email- InValid Entry
    When I entered "<email>" in "email_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "email_entry_field" is Highlighted GREEN
    Then I entered "<confirm_email>" in "confirm_email_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    Then I should see Error Message "<error_message>" displayed at "confirm_email_error_message"
    Examples:
      | email           | confirm_email    | error_message                                                                                        |
      | one1@test.com   | two2@test.com    | The email address you have entered does not match. Please enter and confirm the email address again. |
      | first1@test.com | second2@test.com | The email address you have entered does not match. Please enter and confirm the email address again. |

  @cmpcbo250-21
  Scenario Outline: Confirm Email- Valid Entry
    When I entered "<email>" in "email_entry_field"
    Then I should see Mandatory field "email_entry_field" is Highlighted GREEN
    Then I entered "<confirm_email>" in "confirm_email_entry_field"
    Then I should see Mandatory field "confirm_email_entry_field" is Highlighted GREEN

    Examples:
      | email          | confirm_email  |
      | test1@test.com | test1@test.com |
      | first@test.com | first@test.com |

  @cmpcbo250-22
  Scenario Outline: Phone Field space
    When I entered key stroke "<phone>" in "phone_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "phone_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "phone_error_message"
    Examples:
      | phone | error_message                                       |
      | space | Neither the first or last character can be a space. |


  @cmpcbo250-23
  Scenario Outline: Phone Field - Invalid Entry
    When I entered "<phone>" in "phone_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "phone_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "phone_error_message"
    Examples:
      | phone   | error_message                               |
      | ADBC    | This must include at least one number(0-9). |
      | 12@76-- | This must include at least one number(0-9). |

  @cmpcbo250-24
  Scenario Outline: Phone Field - valid Entry
    When I entered "<phone>" in "phone_entry_field"
    Then I should see Mandatory field "phone_entry_field" is Highlighted GREEN
    Examples:
      | phone       |
      | 02082326677 |

  @cmpcbo250-25
  Scenario Outline: Phone Field - Max 20 character displayed
    When I entered "<phone>" in "phone_entry_field"
    Then I can only see first "20" character displayed in "phone_entry_field"
    Examples:
      | phone                             |
      | 020823266770208232667702082326677 |

  @cmpcbo250-26
  Scenario Outline: Address Line 1 - Max 100 character displayed
    When I entered "<address>" in "address_line1_entry_field"
    Then I can only see first "100" character displayed in "address_line1_entry_field"
    Examples:
      | address                                                                                         |
      | 101-Valid Address101-ValidAddress101-ValidAddress101-ValidAddress101-Valid Address101-Valid Address101-ValidAddress101-ValidAddress101-ValidAddress101-Valid Address |

  @cmpcbo250-27
  Scenario Outline: Address Line 1 - Bank & Space
    When I entered key stroke "<address>" in "address_line1_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "address_line1_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "address_line1_error_message"
    Examples:
      | address | error_message                                       |
      | space   | Neither the first or last character can be a space. |

  @cmpcbo250-28
  Scenario Outline: Address Line 1 - special characters
    When I entered "<address>" in "address_line1_entry_field"
    Then I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "address_line1_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "address_line1_error_message"
    Examples:
      | address   | error_message                                                         |
      | £ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | $ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | ^ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | = address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | < address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | > address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | \ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | ' address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | # address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | ~ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |

  @cmpcbo250-29
  Scenario Outline: Address Line 1 - Valid Entry
    When I entered "<addressLine1>" in "address_line1_entry_field"
    Then I should see Mandatory field "address_line1_entry_field" is Highlighted GREEN
    Examples:
      | addressLine1                 |
      | 101-A, This is Valid Address |


  @cmpcbo250-30
  Scenario Outline: Address Line 2 - Max 100 character displayed
    When I entered "<address>" in "address_line2_entry_field"
    Then I can only see first "100" character displayed in "address_line2_entry_field"
    Examples:
      | address                                                                                         |
      | 101-Valid Address101-ValidAddress101-ValidAddress101-ValidAddress101-Valid Address101-Valid Address101-ValidAddress101-ValidAddress101-ValidAddress101-Valid Address |

  @cmpcbo250-31
  Scenario Outline: Address Line 2 - Bank & Space
    When I entered key stroke "<address>" in "address_line2_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "address_line2_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "address_line2_error_message"
    Examples:
      | address | error_message                                       |
      | space   | Neither the first or last character can be a space. |

  @cmpcbo250-32
  Scenario Outline: Address Line 2 - special characters
    When I entered "<address>" in "address_line2_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "address_line2_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "address_line2_error_message"
    Examples:
      | address   | error_message                                                         |
      | £ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | $ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | ^ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | = address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | < address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | > address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | \ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | ' address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | # address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | ~ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |

  @cmpcbo250-33
  Scenario Outline: Address Line 2 - Valid Entry
    When I entered "<address>" in "address_line2_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "address_line2_entry_field" is Highlighted GREEN
    Examples:
      | address                     |
      | 101-A,This is Valid Address |

  @cmpcbo250-34
  Scenario Outline: Address Line 3 - special characters
    When I entered "<address>" in "address_line3_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "address_line3_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "address_line3_error_message"
    Examples:
      | address   | error_message                                                         |
      | £ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | $ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | ^ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | = address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | < address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | > address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | \ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | ' address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | # address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | ~ address | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |

  @cmpcbo250-35
  Scenario Outline: Address Line 3 - Valid Entry
    When I entered "<address>" in "address_line3_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "address_line3_entry_field" is Highlighted GREEN
    Examples:
      | address                     |
      | 101-A,This is Valid Address |

  @cmpcbo250-45
  Scenario Outline: Address Line 3 - Max 100 character displayed
    When I entered "<address>" in "address_line3_entry_field"
    Then I can only see first "100" character displayed in "address_line3_entry_field"
    Examples:
      | address                                                                                         |
      | 101-Valid Address101-ValidAddress101-ValidAddress101-ValidAddress101-Valid Address101-Valid Address101-ValidAddress101-ValidAddress101-ValidAddress101-Valid Address |


  @cmpcbo250-36
  Scenario Outline: Town & City Blank  & space
    When I entered key stroke "<town>" in "town_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    And I scroll to the element "next_button"
    Then I should see Mandatory field "town_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "town_error_message"
    Examples:
      | town  | error_message                                       |
      | space | Neither the first or last character can be a space. |

  @cmpcbo250-37
  Scenario Outline:Town & City - Valid Entry
    When I entered "<town>" in "town_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    And I scroll to the element "next_button"
    Then I should see Non-Mandatory field "town_entry_field" is Highlighted GREEN
    Examples:
      | town       |
      | Valid Town |

  @cmpcbo250-38
  Scenario Outline: Country -Populate post code field
    When  I select by Text "<country>" from the dropdown "country_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    And I scroll to the element "next_button"
    And I should see Mandatory field "country_entry_field" is Highlighted GREEN
    Then I should see "postcode_entry_field" is visible & displayed
    Examples:
      | country        |
      | United Kingdom |
      | Guernsey       |
      | Jersey         |
      | Isle of Man    |

  @cmpcbo250-39
  Scenario Outline: Country -Select from dropdown list
    When I scroll to the element "country_entry_field"
    And  I select by Text "<country>" from the dropdown "country_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    And I scroll to the element "next_button"
    Then I should see Mandatory field "country_entry_field" is Highlighted GREEN
    Examples:
      | country        |
      | United Kingdom |
      | Guernsey       |
      | Jersey         |
      | Isle of Man    |
      | Australia      |

  @cmpcbo250-40
  Scenario Outline: Postcode -Valid Entry
    When I select by Text "<country>" from the dropdown "country_entry_field"
    Then I should see Mandatory field "country_entry_field" is Highlighted GREEN
    And I should see "postcode_entry_field" is visible & displayed
    And I entered "<postcode>" in "postcode_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    And I scroll to the element "next_button"
    And I should see Mandatory field "postcode_entry_field" is Highlighted GREEN
    Examples:
      | country        | postcode |
      | United Kingdom | M1 1AA   |
      | Guernsey       | M60 1NW  |
      | Jersey         | CR2 6XH  |
      | Isle of Man    | DN55 1PT |

  @cmpcbo250-41
  Scenario Outline: Postcode -InValid Entry
    When I select by Text "<country>" from the dropdown "country_entry_field"
    Then I should see Mandatory field "country_entry_field" is Highlighted GREEN
    And I should see "postcode_entry_field" is visible & displayed
    And I entered "<postcode>" in "postcode_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    And I should see Mandatory field "postcode_entry_field" is Highlighted RED
    And  I should see Error Message "<error_message>" displayed at "postcode_error_message"
    Examples:
      | country        | postcode  | error_message                                                                                 |
      | United Kingdom | 4£M1 1AA  | Please enter a full valid postcode, needs to be uppercase and requires a space between parts. |
      | Guernsey       | 4M1 1AADD | Please enter a full valid postcode, needs to be uppercase and requires a space between parts. |
      | Jersey         | 4M1_1AA   | Please enter a full valid postcode, needs to be uppercase and requires a space between parts. |
      | Isle of Man    | 77M1 1AA  | Please enter a full valid postcode, needs to be uppercase and requires a space between parts. |

  @cmpcbo250-42
  Scenario Outline: Continue  Button disabled when error on form
    When I entered "<invalid_name>" in "firstName_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "firstName_entry_field" is Highlighted RED
    And I scroll to the element "continue_button"
    And I should see "continue_button" is Disabled
    Examples:
      | invalid_name  |
      | $Invalid_Name |


  @cmpcbo250-43
  Scenario Outline: colleague who has access to the Create User function, is able to capture the new CBO user details
    When I select by Text "<title>" from the dropdown "title_entry_field"
    #When I select title as "<title>" from the "title_entry_field"
    And I entered "<firstName>" in "firstName_entry_field"
    And I entered "<lastName>" in "lastName_entry_field"
    And I entered "<user_name>" in "username_entry_field"
    And I entered "<email>" in "email_entry_field"
    And I entered "<email>" in "confirm_email_entry_field"
    And I entered "<phone_no>" in "phone_entry_field"
    And I entered "<address1>" in "address_line1_entry_field"
    And I entered "<address2>" in "address_line2_entry_field"
    And I entered "<address3>" in "address_line3_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I entered "<postcode>" in "postcode_entry_field"
    And I click on "continue_button"
    Then I should see "Assign roles" as "assign_roles_heading"


    Examples:
      | title | firstName | lastName | user_name | email          |  phone_no    | address1 | address2 | address3 | town    | country        | postcode |
      | Mr    | Daniel    | Troy     | DTROY999  | dtroy@test.com |  07882326677 | address4 | address5 | address6 | Barking | United Kingdom | IG11 1JD |


  @cmpcbo250-44
  Scenario Outline: Service Device Delivery Details Displayed
    Then I should see "<service_device_details_text>" as "service_device_details_text_field"
    Examples:
      | service_device_details_text                                                                                                                                                                                                                                                                                 |
      |An order for the security (card and reader) and PIN will be automatically placed. We’ll charge your organisation according to the agreed tariff. It will take up to 5 working days to receive the card and reader at the address provided above. The PIN should arrive within 3 working days.                                                                                                                                                                                                                                                                                                             |
