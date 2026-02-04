Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: User successfully tracks an existing order to check its status
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD12345 is being processed. Expected delivery: 5-7 business days."
