@cmpcbo-1947 @soa
Feature: CMPCBO-1947 - PA user Verify Registration
  I As user
  want to check
  the SOA Response


  @cmpcbo1947-01
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
    """json
  {"userNameToVerify":"","userEmailIdToVerify":"neiltownsley@gmail.com","userName":"","clientId":""}
  """
    When I make  POST Request to the Endpoint "<endPoint>" of base URI "cmp_api_colleague_create_pa_user"
    Then The response status code should be "<expected_response>"
    Examples:
      | endPoint                               | expected_response |
      |/verifyRegistrationAvailability | 200               |



