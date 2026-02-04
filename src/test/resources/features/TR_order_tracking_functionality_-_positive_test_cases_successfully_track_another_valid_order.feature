Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track another valid order
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ABC98765"
    And User clicks the "Track Order" button
    Then The order status should display "Your order ABC98765 is Delivered."
