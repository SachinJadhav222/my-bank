#@cmpcbo-34 @client @regression @sprint01
#Feature: CMPCBO-34 - Colleague Search for OCB Record via Business Partner ID
#  As a Colleague
#  I want to
#  search for a Parent Company via the Business Partner ID and retrieve the client information
#
#  Background: Colleague chose CMP&P Service and navigated to the client details page
#
#    Given I navigate to the "client_url" page
#
#  @cmpcbo34-01
#  Scenario Outline: Colleague navigate to the Client Details page and could see the Business Partner ID entry field
#
#    Then I should see the "client_business_partner_id_field_label" as "<client_business_partner_id>" on the text entry field
#
#    Examples:
#
#      | client_business_partner_id |
#      | Business Partner ID        |
#
#  @cmpcbo34-02
#  Scenario Outline: Verify BP ID tool tip displayed and Text
#    When I move mouse over Tooltip "bpid_tooltip"
#    Then I should see Tooltip text "<tooltip_text>" displayed
#    Examples:
#      | tooltip_text                                                                  |
#      | A Business Partner ID (BP ID) is a 10 digit code used to identify the client. |
#
#
#  @cmpcbo34-03
#  Scenario Outline: Search for a Parent Company using invalid Business Partner ID
#
#    Given I entered an invalid id "<invalid_bp_id>" into "client_business_partner_id_entry_field"
#    Then I should see an "invalid_client_id_error" message as "<invalid_error_message>"
#
#    Examples:
#
#      | invalid_bp_id | invalid_error_message           |
#      | 11589992222   | Enter the 10 digit numeric code |
#      | 117890678     | Enter the 10 digit numeric code |
#      | LB890756      | Enter the 10 digit numeric code |
#
#
#  @cmpcbo34-04
#  Scenario Outline: Search for a Parent Company using valid Business Partner ID
#
#    Given I entered a valid id as "<valid_bp_id>" into "client_business_partner_id_entry_field"
#    When I click on "search_icon"
#    Then I should see the client name as "<client_name>" in "client_name_entry_field"
#    And I should see the client address as "<client_address>" in "client_address_entry_field"
#    And I should see the client postcode as "<client_post_code>" in "client_post_code_field"
#    And I should see the client country as "<client_country>" in "client_country_field"
#
#    Examples:
#
#      | valid_bp_id | client_name | client_address                            | client_post_code | client_country |
#      | 6508382352  | Doy         | 03 Carey Crossing, 6874 Prairieview Point | 741 96           | Sweden         |
#
#  @cmpcbo34-05
#  Scenario Outline: Search for a Parent Company using non existing Business Partner ID
#    Given I enter a non existing business partner id as "<non_existing_bp_id>" into "client_business_partner_id_entry_field"
#    When I click on "search_icon"
#    Then I should see a "no_result_message" as "<no_result_message>"
#
#    Examples:
#
#      | non_existing_bp_id | no_result_message                                           |
#      | 6508382353         | Check that the number you entered is correct and try again. |
#
#  @cmpcbo34-06
#  Scenario Outline: Colleague Search for a Parent Company using valid Business Partner ID and cancelled the search
#    Given I entered a valid id as "<valid_bp_id>" into "client_business_partner_id_entry_field"
#    When I click on "search_icon"
#    And I click on "cancel_button"
#    Then the "client_details_label" field is not displayed
#    Examples:
#      | valid_bp_id |
#      | 6508382352  |
#
#  @cmpcbo34-07
#  Scenario Outline: After the initial successful search with valid Business
#  Partner ID, Colleague is able to return to the client details field and
#  see the client details field populated
#
#    Given I entered a valid id as "<valid_bp_id>" into "client_business_partner_id_entry_field"
#    When I click on "search_icon"
#    And I click on "confirm_button"
#    Then the client name entry field "client_name_entry_field" is populated as "<client_name>"
#    And  the client address1 entry field "client_address_1" is populated as "<client_address1>"
#    And  the client address2 entry field "client_address_2" is populated as "<client_address2>"
#    And  the client post code entry field "client_post_code_field" is populated as "<client_post_code>"
#    And  the client country entry field "client_country_field" is populated as "<client_country>"
#
#    Examples:
#
#      | valid_bp_id | client_name | client_address1    | client_address2         | client_post_code | client_country |
#      | 6508382352  | Doy         | 03 Carey Crossing, | 6874 Prairieview Point, | 741 96           | Sweden         |
