@cmpcbo-999 @soa @regression
Feature: CMPCBO-9999 - APICKLI user Client Details Endpoint
  I As user
  want to check
  the SOA Response

#  Scenario Outline: Get the PA Client Details
#    Given I set Header Name:"Client-Id" to Value:"3234567891"
#    Given I set Header Name:"User-Login-Id" to Value:"CMP001"
#    Given I set Header Name:"User-Role" to Value:"maker/approve"
#    Given I set Header Name:"Correlation-Id" to Value:"5a8f865f0gov7bo7ific"
#
#    When I GET "<endPoint>"
#    Then response code should be "<expected_response>"
#    Examples:
#      | endPoint                               | expected_response |
#      | cmpcbo_1555_pa_client_details_endpoint | 200               |
#     # | http://cmp-wlp.cmp.sbx.zone/cmp/api/service/v1/colleague/create/pa-user/divisionAndProfile | 200               |
#     # | https://jsonplaceholder.typicode.com/todos/1 | 200               |



#  Scenario Outline: Get the PA user Get Division
#    Given I set Header in JSON format
#      """json
#  {
#     "Client - Id": "3234567891",
#
#	"User - Login - Id": "CMP001",
#
#	"User - Role": "maker / approver",
#
#	"Correlation - Id": "5a8f865f0gov7bo7ific"
#  }
#  """
#    Given I set Header Name:"Client-Id" to Value:"3234567891"
#    Given I set Header Name:"User-Login-Id" to Value:"CMP001"
#    Given I set Header Name:"User-Role" to Value:"maker/approve"
#    Given I set Header Name:"Correlation-Id" to Value:"5a8f865f0gov7bo7ific"
#    When I  GET Request to the Endpoint "<endPoint>" of the base URI "cmp_api_colleague_create_pa_user"
#    Then response code should be "<expected_response>"
#    Examples:
#      | endPoint            | expected_response |
#      | /divisionAndProfile | 200               |

#    Scenario Outline: Get the PA user Get Division
#    Given I set Header Name:"Client-Id" to Value:"3234567891"
#    Given I set Header Name:"User-Login-Id" to Value:"CMP001"
#    Given I set Header Name:"User-Role" to Value:"maker/approve"
#    Given I set Header Name:"Correlation-Id" to Value:"5a8f865f0gov7bo7ific"
#    When I  GET Request to the Endpoint "<endPoint>" of the base URI "cmp_api_colleague_create_pa_user"
#      Then If I click the row "Summary" then I should the following nested information
#        | Tax       | 11.50  |
#        | Gratuity  | 4.50   |
#        | Total     | 26.59  |
#      Then response code should be "<expected_response>"
#    Examples:
#      | endPoint            | expected_response |
#      | /divisionAndProfile | 200               |


  Scenario Outline: Workflow Retrieve
    Given I set Header Name:"Content-Type" to Value:"application/json"
    #Given I set Header in JSON format "{"workflowId": "4000000009"}
    And I set Header Name:"Party-Id" to Value:"3234567892"
    Then I set body to {"workflowId": "4000000009"}
    When I POST Request to the Endpoint "<endPoint>" of base URI "cmp_api_colleague_client_workflow"
   # When I POST Request to the Endpoint "<endPoint>" of base URI "/cmp/api/service/v1/client/workflow"
     Then response code should be 200
#    And response header Content-Type should be application/json
#    And response body path $.success should be true
#    And response body path $.workflowId should be 4000000009
#    And response body path $.customerData.user.emailAddress should be bla@bla.com
#    And response body path $.customerData.user.firstName should be John
#    And response body path $.customerData.user.username should be FAILEDRSA
#    And response body path $.customerData.user.country should be United Kingdom
#    And response body path $.customerData.assignedRole.isOCB should be true
#    And response body path $.customerData.selectedHomepage should be Accounts by entity
    Examples:
      | endPoint  |
      | /retrieve |





