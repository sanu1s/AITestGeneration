Feature: OrderTracking.feature

  Scenario: Track order with an invalid format (purely numeric)
    Given User is on the order tracking page
    When User enters order number "123456789"
    And User clicks the "Track Order" button
    Then The result should display error message "Invalid order number format."
