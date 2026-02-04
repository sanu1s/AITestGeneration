Feature: Order Tracking - Positive Scenarios for Back Ordered Status

  Scenario: Successfully track another back-ordered item with a different duration
    Given User is on the order tracking page
    When User enters order number "ORD_BACK_456"
    And User clicks the "Track Order" button
    Then The status message should display "Back Ordered"
    And The status message should contain "Estimated shipment in 2 weeks"
