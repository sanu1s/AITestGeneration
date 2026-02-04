Feature: Order Tracking - Delivery Scheduling Status Verification (Positive Test Cases)

  Scenario: Successfully track another order with a single, confirmed delivery
    Given User is on the order tracking page
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The status message should display "Delivery confirmed for 2023-11-15"
