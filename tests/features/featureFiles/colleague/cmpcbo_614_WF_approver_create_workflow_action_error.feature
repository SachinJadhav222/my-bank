#@cmpcbo-614 @client @workflow @regression @sprint @ignore
#Feature: CMPCBO-614 - Approver Create Workflow
#  Error while creating workflow
#
#  Background: Colleague navigated to the ocb Search Workflow page
#    Given I navigate to the "mock_search_workflow_url" page
#    Then I should see Page Heading "Workflow Search Page" at "workflow_search_page_heading"
#    And I search using "approver_own_workflow_pending_status_id"
#
#  @cmpcbo614-01 @ignore
#  Scenario Outline: Error in approval action
#    Then I should see Page Heading "Check and confirm"
#    Then I should see "status_floating_band" displayed as "<status>"
#    And I should see "workflow_id_floating_band" displayed as "<workflow_id>"
#    When I click on "workflow_approved_button"
#    Then I should see a "workflow_first_popup_header" as "<first-popup-header>"
#    And I should see a "workflow_first_popup_message" as "<first-popup-message>"
#    And I click on "workflow_popup_yes_approve_button"
#    Then I could see "workflow_second_popup_header"
#    And I could see "workflow_second_popup_message"
#    #Then I should see a "workflow_second_popup_header" as "<second-popup-header>"
#    #And I should see a "workflow_second_popup_message" as "<second-popup-message>"
#
#
#    Examples:
#      | status  | workflow_id | first-popup-header | first-popup-message                                                      | second-popup-header | second-popup-message                                                                                                                                                          |
#      | Pending | 8063077318  | Approve workflow   | Approve workflow\nAre you sure you want to approve workflow 8063077318 ? | Error!              | Sorry, an error has occurred while performing your request. Please keep records of the correlation ID (alphanumeric) and raise an incident in the incident management system. |
#
#







