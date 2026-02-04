Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another back-ordered item with order number "ORD_BACK_002"
    Given User is on the order tracking page
    When User enters order number "ORD_BACK_002"
    And User clicks the "Track Order" button
    Then The status message should display "Yes, the estimated delivery date for your back-ordered items is from August 6, 2025, to August 8, 2025."
