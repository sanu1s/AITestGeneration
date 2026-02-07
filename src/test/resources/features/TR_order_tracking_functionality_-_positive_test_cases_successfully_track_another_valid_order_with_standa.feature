Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track another valid order with standard delivery
    Given User is on the order tracking page
    When User enters order number "ORD987654"
    And User clicks the "Track Order" button
    Then The status message should display "Your order ORD987654 is out for delivery, expected by end of day."
    And The URL should be "https://example.com/track/ORD987654"
