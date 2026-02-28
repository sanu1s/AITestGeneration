Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Track a valid order number successfully - Case 2
    Given User is on the Order Search page
    When User enters order number "ORD456" and tracks it
    Then The order status should be "The order status Delayed"
