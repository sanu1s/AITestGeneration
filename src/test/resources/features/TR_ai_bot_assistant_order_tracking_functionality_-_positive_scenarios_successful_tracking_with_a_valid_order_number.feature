Feature: AI Bot Assistant Order Tracking Functionality - Positive Scenarios

  Scenario: Successful Tracking with a Valid Order Number
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD12345 is being processed."
