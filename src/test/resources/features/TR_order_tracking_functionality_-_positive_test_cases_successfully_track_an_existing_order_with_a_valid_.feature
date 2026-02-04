Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track an existing order with a valid number
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Your order ORD12345 is being processed."
    And The URL should be "https://example.com/track/ORD12345"
