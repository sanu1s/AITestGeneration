Feature: Order Tracking for Lunchbox - Positive Scenarios

  Scenario: Successfully track a lunchbox order in transit
    Given User is on the order tracking page
    When User enters order number "LBOX67890"
    And User clicks the "Track Order" button
    Then The order status should display "Your lunchbox order LBOX67890 is currently in transit."
