Feature: Order Tracking - Delivery Scheduling Status Verification (Positive Test Cases)

  Scenario: Successfully track an order with a single, valid delivery
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Delivery scheduled for 2023-10-27"
