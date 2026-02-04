Feature: Order Tracking - Positive Scenarios for Issue Resolution

  Scenario: User tracks another order with an identified issue and confirms replacement details
    Given User is on the order tracking page
    When User enters order number "ORD_PROBLEM_456"
    And User clicks the "Track Order" button
    Then The status message should contain "replacement being shipped"
    And The status message should contain "return instructions as well as your replacement order details"
    And The status message should contain "7-10 days"
