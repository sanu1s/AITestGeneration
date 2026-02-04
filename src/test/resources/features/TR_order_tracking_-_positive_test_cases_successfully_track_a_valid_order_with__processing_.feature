Feature: Order Tracking - Positive Test Cases

  Scenario: Successfully track a valid order with 'Processing' status
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks "Track Order" button
    Then The status message should display "Order ORD12345 is being processed."
    And The current URL should be "https://example.com/track/ORD12345"
