@soa @baseUrl @baseUrl-examples
Feature: Generating random data
    The following examples show the features of this testing application
    and available options for generating random data

Scenario: Generating a random word for test data
    Given I set JSON Request body:
    """json
    {
        "title": "foo",
        "body": "bar",
        "userId": 1
    }
    """
    And The property "title" is a random word
    When I make POST Request to the Endpoint "/posts" of base URI "json_placeholder_api"
    Then The response status code should be "201"

Scenario: Generating random words for test data (space delimited)
    Given I set JSON Request body:
    """json
    {
        "title": "foo",
        "body": "bar",
        "userId": 1
    }
    """
    And The property "title" is "4" random words
    When I make POST Request to the Endpoint "/posts" of base URI "json_placeholder_api"
    Then The response status code should be "201"