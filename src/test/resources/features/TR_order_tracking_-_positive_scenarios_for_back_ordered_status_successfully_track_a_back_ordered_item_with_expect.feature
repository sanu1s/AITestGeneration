Feature: Order Tracking - Positive Scenarios for Back Ordered Status

  Scenario: Successfully track a back-ordered item with expected delivery date
    Given User is on the order tracking page
    When User enters order number "ORD_BACK_123"
    And User clicks the "Track Order" button
    Then The status message should display "Back Ordered"
    And The status message should contain "Expected delivery within 7-10 business days"
