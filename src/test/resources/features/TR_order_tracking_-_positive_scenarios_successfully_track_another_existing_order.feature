Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another existing order
    Given User is on the order tracking page
    When User enters order number "12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order 12345 is Delivered"
