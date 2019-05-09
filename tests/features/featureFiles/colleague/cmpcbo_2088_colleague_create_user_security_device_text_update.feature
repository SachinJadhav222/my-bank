@cmpcbo-2088 @client @colleagueCreatePAUser @regression @sprint25
Feature: CMPCBO-2088 - update the colleague create PA user security device text
  Security Device Text to be updated as "An order for the user’s security device (card and reader)
  and PIN will be automatically placed.  This will be charged in line with the agreed tariff and
  all items will be received in the post."


  @cmpcbo2088-01
  Scenario Outline: Colleague navigated to the User Details page and confirmed the valid security device text.
    Given I navigate to the "pa_user_Volvo_primary_admin_create_new_user_url" page
    When I could see "security_device_delivery_details_label" as "Service device delivery details"
    Then I should see the "security_device_delivery_details_text" as "<service_device_delivery_text>"


    Examples:
      | service_device_delivery_text                                                                                                                                                                    |
      | An order for the user’s security device (card and reader) and PIN will be automatically placed. This will be charged in line with the agreed tariff and all items will be received in the post. |


