@cmpcbo-309 @client @createClientMVP @regression @sprint05
Feature: CMPCBO-309 - Validation form fields
  As a Colleague
  I want to check the From field Validation

  @cmpcbo309-01
  Scenario Outline: Mandatory Title entry Field Left Blank and clicked Outside to See Error
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I scroll to the element "<mandatory_field>"
    And I click on Mandatory Field "<mandatory_field>"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Error Message "<error_message>" displayed at "<error_message_field>"
    Examples:
      | mandatory_field   | error_message           | error_message_field |
      | title_entry_field | Choose the user’s title | title_error_message |

  @cmpcbo309-01
  Scenario Outline: Mandatory Filed Left Blank and clicked Outside to See Error
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I could see "create_client_page_heading" as "Create a new client"
    And I scroll to the element "<mandatory_field>"
    And I click on Mandatory Field "<mandatory_field>"
    And I click out of the Box on "primary_admin_details_heading"
    And I scroll to the element "<mandatory_field>"
    Then I should see Error Message "<error_message>" displayed at "<error_message_field>"
    Examples:
      | mandatory_field           | error_message                               | error_message_field         |
      | email_entry_field         | Enter the user’s email address              | email_error_message         |
      | confirm_email_entry_field | Enter the user’s correct email address      | confirm_email_error_message |
      | phone_entry_field         | Enter the user’s telephone number           | phone_error_message         |
      | address_line1_entry_field | Enter the first line of the user’s address  | address_line1_error_message |
      | address_line2_entry_field | Enter the second line of the user’s address | address_line2_error_message |
      | town_entry_field          | Enter the user’s town or city               | town_error_message          |
      | country_entry_field       | Enter the user’s country                    | country_error_message       |

  @cmpcbo309-02
  Scenario Outline: Title-Valid entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I could see "create_client_page_heading" as "Create a new client"
    And I select by Text "<salutation_title>" from the dropdown "title_entry_field"
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

  @cmpcbo309-03
  Scenario Outline: First Name-Invalid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<first_name>" in "firstName_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Error Message "<error_message>" displayed at "firstName_error_message"
    Examples:
      | first_name | error_message                                                         |
      | 99Dan      | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | _Don Dyne  | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | Dev_Team   | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |

  @cmpcbo309-04
  Scenario Outline: First Name - Valid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<first_name>" in "firstName_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "firstName_entry_field" is Highlighted GREEN
    Examples:
      | first_name      |
      | Mike            |
      | Mike Jones 2    |
      | mike Jane Jones |

  @cmpcbo309-05
  Scenario Outline: First Name - Max 20 Alpha numeric value displayed
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<first_name>" in "firstName_entry_field"
    Then I can only see first "20" character displayed in "firstName_entry_field"
    Examples:
      | first_name                                   |
      | FirstNameMikeMikeMikeMikeMikeMikeDDDddddTTDD |

  @cmpcbo309-06
  Scenario Outline: Last Name - Invalid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<last_name>" in "lastName_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Error Message "<error_message>" displayed at "lastName_error_message"
    Examples:
      | last_name   | error_message                                                         |
      | 88LastName  | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | 99-LastName | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |
      | last_name   | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |


  @cmpcbo309-07
  Scenario Outline: Last Name - Valid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<last_name>" in "lastName_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "lastName_entry_field" is Highlighted GREEN
    Examples:
      | last_name      |
      | LastName       |
      | Last Name 2nd  |
      | last name NAME |

  @cmpcbo309-08
  Scenario Outline: Last Name - Max 20 Alpha numeric value displayed
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<last_name>" in "lastName_entry_field"
    Then I can only see first "20" character displayed in "lastName_entry_field"
    Examples:
      | last_name                               |
      | LastNameMikeMikeMikeMikeMikeMikeDDDdddd |

  @cmpcbo309-09
  Scenario Outline: Job Title-Invalid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<job_title>" in "jobTitle_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Non-Mandatory field "jobTitle_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "jobTitle_error_message"
    Examples:
      | job_title      | error_message                                                         |
      | -£#InvalidJobs | This can only contain letters and numbers (A-Z, a-z, 0-9) and spaces. |

  @cmpcbo309-10
  Scenario Outline: Job Title -Valid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<job_title>" in "jobTitle_entry_field"
    Then I should see Non-Mandatory field "jobTitle_entry_field" is Highlighted GREEN
    Examples:
      | job_title     |
      | valid Jobs 10 |

  @cmpcbo309-11
  Scenario Outline: Job Title -Max 40 Alpha numeric value displayed
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<job_title>" in "jobTitle_entry_field"
    #Then I can only see first "30" character displayed in "jobTitle_entry_field"
    Then I can only see first "40" character displayed in "jobTitle_entry_field"
    Examples:
      | job_title                                               |
      | validJobs10validJobs10validJobs10validJobs10validJobs10validJobs10validJobs10validJobs10validJobs10validJobs1 |

  @cmpcbo309-12
  Scenario Outline: Email - Blank or space in between Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered key stroke "<email>" in "email_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "email_entry_field" is Highlighted RED color
    And I should see Error Message "<error_message>" displayed at "email_error_message"
    Examples:
      | email | error_message                                       |
      | space | Neither the first or last character can be a space. |


  @cmpcbo309-13
  Scenario Outline: Email - Invalid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<email>" in "email_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "email_entry_field" is Highlighted RED color
    And I should see Error Message "<error_message>" displayed at "email_error_message"
    Examples:
      | email                | error_message                                                                                                                |
      | --a@a.c:             | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | a2@a2.co--           | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | --a@a.c@             | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | my:email@test.com    | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | email@my@test.com    | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |
      | email@my@my.test.com | The email format you entered is incorrect. Please ensure the email address is in a valid format, for example name@email.com. |


  @cmpcbo309-14
  Scenario Outline: Email- Valid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<email>" in "email_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "email_entry_field" is Highlighted GREEN
    Examples:
      | email             |
      | test@test.com     |
      | test123@123.co.uk |

  @cmpcbo309-15
  Scenario Outline: Confirm Email- InValid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<email>" in "email_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    And I should see Mandatory field "email_entry_field" is Highlighted GREEN
    And I entered "<confirm_email>" in "confirm_email_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Error Message "<error_message>" displayed at "confirm_email_error_message"
    Examples:
      | email           | confirm_email    | error_message                                                                                        |
      | one1@test.com   | two2@test.com    | The email address you have entered does not match. Please enter and confirm the email address again. |
      | first1@test.com | second2@test.com | The email address you have entered does not match. Please enter and confirm the email address again. |

  @cmpcbo309-16
  Scenario Outline: Confirm Email- Valid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<email>" in "email_entry_field"
    And I should see Mandatory field "email_entry_field" is Highlighted GREEN
    And I entered "<confirm_email>" in "confirm_email_entry_field"
    Then I should see Mandatory field "confirm_email_entry_field" is Highlighted GREEN

    Examples:
      | email          | confirm_email  |
      | test1@test.com | test1@test.com |
      | first@test.com | first@test.com |

  @cmpcbo309-17
  Scenario Outline: Phone Field space
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered key stroke "<phone>" in "phone_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "phone_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "phone_error_message"
    Examples:
      | phone | error_message                                       |
      | space | Neither the first or last character can be a space. |


  @cmpcbo309-18
  Scenario Outline: Phone Field - Invalid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<phone>" in "phone_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "phone_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "phone_error_message"
    Examples:
      | phone   | error_message                               |
      | ADBC    | This must include at least one number(0-9). |
      | 12@76-- | This must include at least one number(0-9). |

  @cmpcbo309-19
  Scenario Outline: Phone Field - valid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I scroll to the element "phone_entry_field"
    And I entered "<phone>" in "phone_entry_field"
    Then I should see Mandatory field "phone_entry_field" is Highlighted GREEN
    Examples:
      | phone       |
      | 02082326677 |

  @cmpcbo309-20
  Scenario Outline: Phone Field - Max 20 character displayed
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<phone>" in "phone_entry_field"
    Then I can only see first "20" character displayed in "phone_entry_field"
    Examples:
      | phone                             |
      | 020823266770208232667702082326677 |

  @cmpcbo309-21
  Scenario Outline: Address Line 1 - Max 100 character displayed
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<address>" in "address_line1_entry_field"
    #Then I can only see first "60" character displayed in "address_line1_entry_field"
      Then I can only see first "100" character displayed in "address_line1_entry_field"
    Examples:
      | address                                                                                         |
      | 101-Valid Address101-ValidAddress101-ValidAddress101-ValidAddress101-Valid Address101-Valid Address101-ValidAddress101-ValidAddress101-ValidAddress101-Valid Address |

  @cmpcbo309-22
  Scenario Outline: Address Line 1 - Bank & Space
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered key stroke "<address>" in "address_line1_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "address_line1_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "address_line1_error_message"
    Examples:
      | address | error_message                                       |
      | space   | Neither the first or last character can be a space. |

  @cmpcbo309-23
  Scenario Outline: Address Line 1 - special characters
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<address>" in "address_line1_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
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

  @cmpcbo309-24
  Scenario Outline: Address Line 1 - Valid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<addressLine1>" in "address_line1_entry_field"
    Then I should see Mandatory field "address_line1_entry_field" is Highlighted GREEN
    Examples:
      | addressLine1                 |
      | 101-A, This is Valid Address |


  @cmpcbo309-25
  Scenario Outline: Address Line 2 - Max 100 character displayed
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<address>" in "address_line2_entry_field"
   # Then I can only see first "60" character displayed in "address_line2_entry_field"
    Then I can only see first "100" character displayed in "address_line2_entry_field"
    Examples:
      | address                                                                                         |
      | 101-Valid Address101-ValidAddress101-ValidAddress101-ValidAddress101-Valid Address101-Valid Address101-ValidAddress101-ValidAddress101-ValidAddress101-Valid Address |


  @cmpcbo309-26
  Scenario Outline: Address Line 2 - Bank & Space
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered key stroke "<address>" in "address_line2_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "address_line2_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "address_line2_error_message"
    Examples:
      | address | error_message                                       |
      | space   | Neither the first or last character can be a space. |

  @cmpcbo309-27
  Scenario Outline: Address Line 2 - special characters
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<address>" in "address_line2_entry_field"
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

  @cmpcbo309-28
  Scenario Outline: Address Line 2 - Valid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<address>" in "address_line2_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "address_line2_entry_field" is Highlighted GREEN
    Examples:
      | address                     |
      | 101-A,This is Valid Address |

  @cmpcbo309-29
  Scenario Outline: Address Line 3 - special characters
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<address>" in "address_line3_entry_field"
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

  @cmpcbo309-30
  Scenario Outline: Address Line 3 - Valid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<address>" in "address_line3_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "address_line3_entry_field" is Highlighted GREEN
    Examples:
      | address                     |
      | 101-A,This is Valid Address |

  @cmpcbo309-38
  Scenario Outline: Address Line 3 - Max 100 character displayed
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<address>" in "address_line3_entry_field"
   # Then I can only see first "60" character displayed in "address_line3_entry_field"
   Then I can only see first "100" character displayed in "address_line3_entry_field"
    Examples:
      | address                                                                                         |
      | 101-Valid Address101-ValidAddress101-ValidAddress101-ValidAddress101-Valid Address101-Valid Address101-ValidAddress101-ValidAddress101-ValidAddress101-Valid Address |


  @cmpcbo309-31
  Scenario Outline: Town & City Blank  & space
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I scroll to the element "town_entry_field"
    And I entered key stroke "<town>" in "town_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    And I scroll to the element "continue_button"
    Then I should see Mandatory field "town_entry_field" is Highlighted RED
    And I should see Error Message "<error_message>" displayed at "town_error_message"
    Examples:
      | town  | error_message                                       |
      | space | Neither the first or last character can be a space. |

  @cmpcbo309-32
  Scenario Outline:Town & City - Valid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I scroll to the element "town_entry_field"
    And I entered "<town>" in "town_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    And I scroll to the element "continue_button"
    Then I should see Non-Mandatory field "town_entry_field" is Highlighted GREEN
    Examples:
      | town       |
      | Valid Town |

  @cmpcbo309-33
  Scenario Outline: Country -Populate post code field
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And  I select by Text "<country>" from the dropdown "country_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    And I scroll to the element "continue_button"
    Then I should see Mandatory field "country_entry_field" is Highlighted GREEN
    And I should see "postcode_entry_field" is visible & displayed
    Examples:
      | country        |
      | United Kingdom |
      | Guernsey       |
      | Jersey         |
      | Isle of Man    |

  @cmpcbo309-34
  Scenario Outline: Country -Select from dropdown list
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I scroll to the element "country_entry_field"
    And  I select by Text "<country>" from the dropdown "country_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    And I scroll to the element "continue_button"
    Then I should see Mandatory field "country_entry_field" is Highlighted GREEN
    Examples:
      | country        |
      | United Kingdom |
      | Guernsey       |
      | Jersey         |
      | Isle of Man    |
      | Australia      |

  @cmpcbo309-35
  Scenario Outline: Postcode -Valid Entry
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I should see Mandatory field "country_entry_field" is Highlighted GREEN
    And I should see "postcode_entry_field" is visible & displayed
    And I entered "<postcode>" in "postcode_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    And I scroll to the element "continue_button"
    Then I should see Mandatory field "postcode_entry_field" is Highlighted GREEN
    Examples:
      | country        | postcode |
      | United Kingdom | M1 1AA   |
      | Guernsey       | M60 1NW  |
      | Jersey         | CR2 6XH  |
      | Isle of Man    | DN55 1PT |

  @cmpcbo309-36
  Scenario Outline: Postcode -InValid Entry
    Given I navigate to the "colleague_create_client_url" page
    Given I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I scroll to the element "country_entry_field"
    And I select by Text "<country>" from the dropdown "country_entry_field"
    And I should see Mandatory field "country_entry_field" is Highlighted GREEN
    And I should see "postcode_entry_field" is visible & displayed
    When I entered "<postcode>" in "postcode_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "postcode_entry_field" is Highlighted RED
    And  I should see Error Message "<error_message>" displayed at "postcode_error_message"
    Examples:
      | country        | postcode  | error_message                                                                                 |
      | United Kingdom | 4£M1 1AA  | Please enter a full valid postcode, needs to be uppercase and requires a space between parts. |
      | Guernsey       | 4M1 1AADD | Please enter a full valid postcode, needs to be uppercase and requires a space between parts. |
      | Jersey         | 4M1_1AA   | Please enter a full valid postcode, needs to be uppercase and requires a space between parts. |
      | Isle of Man    | 77M1 1AA  | Please enter a full valid postcode, needs to be uppercase and requires a space between parts. |

  @cmpcbo309-37
  Scenario Outline: Next Button disabled when error on form
    Given I navigate to the "colleague_create_client_url" page
    When I entered "VOLKSWAGEN UK" in "client_name_entry_field"
    And I entered "3111111111" in "bp_id_entry_field"
    And I entered "2222334465" in "cmd_id_entry_field"
    And I entered "testaddress1" in "address_line1_entry_field"
    And I entered "testaddress2" in "address_line2_entry_field"
    And I entered "testaddress3" in "address_line3_entry_field"
    And I entered "London" in "town_entry_field"
    And I select by Text "United Kingdom" from the dropdown "country_entry_field"
    And I entered "IG11 1QW" in "postcode_entry_field"
    And I click on "continue_button"
    And I select by Index "1" from the dropdown "service_package_name"
    And I click on "continue_button"
    And I entered "<invalid_name>" in "firstName_entry_field"
    And I click out of the Box on "primary_admin_details_heading"
    Then I should see Mandatory field "firstName_entry_field" is Highlighted RED
    And I should see "continue_button" is Disabled
    Examples:
      | invalid_name  |
      | $Invalid_Name |
