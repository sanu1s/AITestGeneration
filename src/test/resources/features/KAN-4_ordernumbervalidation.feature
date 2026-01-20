Feature: OrderNumberValidation

  Scenario: Attempt to track order with empty order number
    Given User is on the Order Tracking page
    When User enters order number ""
    And User clicks the 'Track Order' button
    Then An error message "Order number cannot be empty" should be displayed
