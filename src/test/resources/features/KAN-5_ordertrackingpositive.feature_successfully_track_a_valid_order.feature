Feature: OrderTrackingPositive.feature

  Scenario: Successfully track a valid order
    Given User navigates to the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed" and display "Delivery Date"
