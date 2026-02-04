Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully Track Order with Valid ID "XYZ98765"
    Given User is on the order tracking page
    When User enters order number "XYZ98765"
    And User clicks the "Track Order" button
    Then The order status should display "Your order has been delivered."
    And The current URL should be "https://example.com/track/XYZ98765"
