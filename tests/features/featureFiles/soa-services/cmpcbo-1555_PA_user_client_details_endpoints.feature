@cmpcbo-1555 @soa @regression @sprint23
Feature: CMPCBO-1555 - PA user Client Details Endpoint
  I As user
  want to check
  the SOA Response


  @cmpcbo1555-01
  Scenario Outline: Get the PA Client Details
    Given I set JSON Request body:
    """json
  {
     "Client - Id": "3234567891",

	"User - Login - Id": "CMP001",

	"User - Role": "maker / approver",

	"Correlation - Id": "5a8f865f0gov7bo7ific"
  }
  """
    When I make POST Request to the Endpoint "<endPoint>" of base URI "cmp_api_colleague_create_pa_user"
    Then The response status code should be "<expected_response>"
    Examples:
      | endPoint                               | expected_response |
      |/divisionAndProfile | 200               |

  @cmpcbo1555-03
  Scenario Outline: Get the PA Client Details
  When I make GET Request to the Endpoint "<endPoint>" of base URI "json_placeholder_api"
    Then The response status code should be "<expected_response>"
    Examples:
      | endPoint                  | expected_response |
      | /todos/1| 200               |




