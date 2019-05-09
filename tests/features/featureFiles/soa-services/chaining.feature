Feature: chaining feature

  Scenario: Using data from a previous request
    # First, create a new payee
    Given I set JSON Request body:
    """json
    {
        "payeeName": "Seaton",
        "payeeAccountNumber": "54644"
    }
   """
    When I make  POST Request to the Endpoint "/payees/v1.0" of base URI "json_placeholder_api"
    Then The response status code should be "200"
    And The response property "payeeName" should be "Seaton"

#Scenario: Try to update the payee we just created
#    Given the synthetic id from the response
#    And the json request data
#    """json
#    {
#        "payeeId": "",
#        "payeeName": "Brexit",
#        "payeeAccountNumber": "V00062567748",
#    }
#    """
#    And the property "payeeId" is set to the response property "payeeId"
#    When I make a POST request to "/payees/v1.0"
#    Then the response status code should be "200"
#    And the response property "payeeName" should be "Brexit"