@cmpcbo-2089 @customer @regression @sprint25
Feature: CMPCBO-2089 - update the create client security device text
  Security Device Text to be updated as "An order for the user’s security device (card and reader)
  and PIN will be automatically placed.  This will be charged in line with the agreed tariff and
  all items will be received in the post."


  @cmpcbo2089-01
  Scenario Outline: Client navigated to the User Details page and confirmed the valid security device text.
    Given I navigate to the "volvo_primary_admin" page
    When I could see "security_device_delivery_details_label" as "Service device delivery details"
    Then I should see the "security_device_delivery_details_text" as "<service_device_delivery_text>"


    Examples:
      | service_device_delivery_text                                                                                                                                                                    |
      | An order for the user’s security device (card and reader) and PIN will be automatically placed. This will be charged in line with the agreed tariff and all items will be received in the post. |








