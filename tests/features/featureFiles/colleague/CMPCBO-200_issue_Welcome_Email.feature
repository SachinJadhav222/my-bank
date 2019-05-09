#@CBO @sanity @colleague @CMPCBO-200
#
#Feature: Approver colleague has approved a workflow to create new client and issue welcome email and activated email
#
#  @CMPCBO-200
#  Scenario Outline: 1.1 As a lloyds Commercial Banking CMP Colleague, I want to create a new Client and it's admin and generate Workflow ID
#    Given I have access to <brand> <user> as a <User Type>
#    And I click on "Search client downright"
#    And I click on "Create client"
#    And I enter "volvo" in "CMP_Client_name"
#    And I enter "<BP_ID>" in "CMP_Bp_ID"
#    And I enter "001458" in "CMD_ID"
#    And I enter "Broomhouse Loan" in "CMP_AddressLine1"
#    And I enter "Sighthill" in "CMP_AddressLine2"
#    And I enter "Edinburgh" in "CMP_AddressLine3"
#    And I enter "Scotland" in "CMP_City"
#    And I click on "CMP_Country"
#    And I enter "E6 1BN" in "CMP_Postcode"
#    And I click on "CMP_Continue_Button"
#    And I wait 3 seconds
#    And I click on "CMP_Service_package2"
#    And I click on "CMP_Continue_Button"
#    And I click on "CMP_Title"
#    And I enter "Chakra" in "CMP_FirstName"
#    And I enter "Pani" in "CMP_Last_Name"
#    And I enter "Manager" in "CMP_JobTitle"
#    And I enter Email in "CMP_EmailId"
#    And I enter ConfirmEmail in "CMP_Confirm_EmailId"
#    And I enter "07448072649" in "CMP_TelephoneNumber"
#    And I enter "Broomhouse Loan" in "CMP_AddressLine1"
#    And I enter "Sighthill" in "CMP_AddressLine2"
#    And I enter "Edinburgh" in "CMP_AddressLine3"
#    And I enter "Scotland" in "CMP_City"
#    And I click on "CMP_Country"
#    And I enter "E6 1BN" in "CMP_Postcode"
#    And I click on "CMP_Continue_Button"
#    And I click on "CMP_Confirm_Button"
#    And I wait 3 seconds
#    And I click on "CMP_Title"
#    And I enter "Dilip" in "CMP_FirstName"
#    And I enter "Sharma" in "CMP_Last_Name"
#    And I enter "Manager" in "CMP_JobTitle"
#    And I enter Email in "CMP_EmailId"
#    And I enter ConfirmEmail in "CMP_Confirm_EmailId"
#    And I enter "07448072649" in "CMP_TelephoneNumber"
#    And I enter "Broomhouse Loan" in "CMP_AddressLine1"
#    And I enter "Sighthill" in "CMP_AddressLine2"
#    And I enter "Edinburgh" in "CMP_AddressLine3"
#    And I enter "Scotland" in "CMP_City"
#    And I click on "CMP_Country"
#    And I enter "E6 1BN" in "CMP_Postcode"
#    And I click on "CMP_Continue_Button"
#    And I click on "CMP_Continue_Button"
#    Then I should see the "CMP_WorkFlow_Id" existed
#    And I fetch Workflow ID from "CMP_WorkFlow_Id"
#
#    Examples:
#      |User Type            | brand  | user                                 |BP_ID     |
#      |CMP001 Maker         | lloyds | searchCustomer.faces?LoginName=CMP001|0000000298|
#
#
#  @CMPCBO-200
#  Scenario Outline: 1.2 CMP colleague search with an workflow ID created by CBO colleague and approve
#    Given I delete cookies
#    And I wait 20 seconds
#    Given I have access to <brand> <user> as a <User Type>
#    When I click on "Clients Downright"
#    And  I click on "Workflow"
#    And I enter Workflow ID in "Workflow Item ID text box"
#    And  I click on "Page"
#    And  I click on "Search" button
#    And I click on "CMP_Approve_button"
#    And I click on "CMP_Yes_To_Approve_Button"
#    Then I should see the "CMP_Workflow_Approved_Msg" existed
#    And I wait 5 seconds
#
#    Examples:
#      |User Type            | brand  | user                                 |
#      |CMP002 Maker Approver| lloyds | searchCustomer.faces?LoginName=CMP002|
#
#  @CMPCBO-200
#  Scenario Outline: 1.3 Verified the last name in welcome email issue for client
#    Given I have access to <brand> <user> as a <User Type>
#    And I click on "welcomeEmail"
#    Then I should see the "<Last_Name>" in "email_template" displayed in the welcome email
#
#    Examples:
#      |User Type | brand | user                           |Last_Name|
#      |CMP Client| Email | CBOTesting@na.LloydsBanking.com|Kumar1      |
#
#
#  @CMPCBO-200
#  Scenario Outline: 1.4 Verified the phone number in welcome email issue for client
#    Given I have access to <brand> <user> as a <User Type>
#    And I click on "welcomeEmail"
#    Then I should see the "<Phone_number>" in "email_template_body" is displayed in new generated email template
#
#    Examples:
#      |User Type | brand | user                           |Phone_number                   |
#      |CMP Client| Email | CBOTesting@na.LloydsBanking.com|0000 000 0000 (+00 0000 000 000|

#**************************************************************************************************************************************
#  @CMPCBO-200
#    Scenario Outline: 2.1 As a lloyds Commercial Banking Colleague, I want to create a new Client and it's admin and generate Workflow ID
#      Given I delete cookies
#      And I wait 20 seconds
#      Given I am applying for a <brand> <user> account as a CBO Colleague
#      And I click on "Search client downright"
#      And I click on "Create client"
#      And I click on "Client brand"
#      And I click on "Client Lloyds"
#      And I enter "CBO" in "Client Name"
#      And I enter "Flat 1" in "Address Line1"
#      And I enter "Eden House" in "Address Line2"
#      And I enter "Spital Square" in "Address Line3"
#      And I enter "London" in "City"
#      And I enter "E1 6DU" in "Company Postcode"
#      And I click on "Single admin"
#      And I click on "Next button"
#      And I click on "Payment type"
#      And I click on "BTR only"
#      And I wait 2 seconds
#      And I click on "Next button"
#      And I enter "111111" in "Sort code"
#      And I enter "11111111" in "Account Number"
#      And I click on "Import legal entity"
#      And I wait 2 seconds
#      And I click on "Legal Entry First Radio button"
#      And I click on "Legal entity"
#      And I wait 2 seconds
#      And I click on "Legal entity Next button"
#      And I click on "Skip to Add Primary administrator"
#      And I click on "Title dropdwon"
#      And I click on "Mrs"
#      And I click on "Mrs"
#      And I enter "ABC" in "First Name"
#      And I enter "XYZ" in "Last Name"
#      And I enter "Manager" in "Job Title"
#      And I enter Email in "Email Address"
#      And I enter ConfirmEmail in "Confirm Email Address"
#      And I enter "7777777777" in "Telephone"
#      And I click on "Add Primary Administrator button"
#      And I wait 2 seconds
#      And I click on "Primary Admin Next Button"
#      And I click on "Skip to invoice Details"
#      And I enter "111111" in "Invoice Sort code"
#      And I enter "11111111" in "Invoice Account number"
#      And I enter "XYZ" in "Invoicing Recepient"
#      And I enter "CBO TEST" in "Address Line 1"
#      And I enter "London" in "Invoice City"
#      And I click on "Invoice Country"
#      And I click on "Afghanistan"
#      And I click on "Next_button"
#      And I click on "Skip to Check and Confirm Details"
#      And I click on "Confirm and submit for approval"
#      Then I should see the "Request_Successful_Message" existed
#      And I fetch Workflow ID from "Request_Successful_Message"
#
#
#
#      Examples:
#        | brand         | user                                  |
#        | lloyds| searchCustomer.faces?LoginName=111111 |
#
#
#  @CMPCBO-200
#  Scenario Outline: 2.2 As a lloyds Commercial Banking Colleague, I need to approve the Workflow item created for new Client and obtain Client ID
#
#    Given I am applying for a <brand> <user> account as a CBO colleague
#    When I click on "Clients Downright"
#    And  I click on "Workflow"
#    And I enter Workflow ID in "Workflow Item ID text box"
#    And  I click on "Page"
#    And  I click on "Search" button
#    Then I click on "Actions dropdown"
#    And  I click on "Approve"
#    And  I click on "Approve prompt button"
#    Then I should see the "ClientIDno" existed
#    And  I fetch Client ID from "ClientIDno"
#    And I wait 10 seconds
#    And  I click on "Cross button"
#
#    Examples:
#      | brand          |        user                         |
#      | lloyds | searchCustomer.faces?LoginName=11112|
#
#
#  @CMPCBO-200
#  Scenario Outline: 2.3 Verified the lastname in welcome email issue for client
#    Given I have access to <brand> <user> as a <User Type>
#    And I click on "welcomeEmail"
#    Then I should see the "<Last_Name>" in "email_template" displayed in the welcome email
#
#    Examples:
#      |User Type | brand | user                           |Last_Name  |
#      |CMP Client| Email | CBOTesting@na.LloydsBanking.com|XYZ        |
#
#
#  @CMPCBO-200
#  Scenario Outline: 2.4 Verified the phone number in the welcome email issue for client
#    Given I have access to <brand> <user> as a <User Type>
#    And I click on "welcomeEmail"
#    Then I should see the "<Phone_number>" in "email_template_body" is displayed in new generated email template
#
#    Examples:
#      |User Type | brand | user                           |Phone_number                   |
#      |CMP Client| Email | CBOTesting@na.LloydsBanking.com|0808 202 1390 (+44 1264 839 415|