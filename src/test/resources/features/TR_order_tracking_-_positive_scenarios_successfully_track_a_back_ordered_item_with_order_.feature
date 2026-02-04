Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a back-ordered item with order number "ORD_BACK_001"
    Given User is on the order tracking page
    When User enters order number "ORD_BACK_001"
    And User clicks the "Track Order" button
    Then The status message should display "Yes, the estimated delivery date for your back-ordered items is from August 6, 2025, to August 8, 2025."
