Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track a valid delivered order
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Your order ORD67890 has been delivered."
