Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully Track Order with Valid ID "ORD12345"
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Your order is in transit."
    And The current URL should be "https://example.com/track/ORD12345"
