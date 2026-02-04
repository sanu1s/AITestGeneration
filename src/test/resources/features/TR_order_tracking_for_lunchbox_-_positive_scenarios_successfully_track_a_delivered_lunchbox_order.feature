Feature: Order Tracking for Lunchbox - Positive Scenarios

  Scenario: Successfully track a delivered lunchbox order
    Given User is on the order tracking page
    When User enters order number "LBOX12345"
    And User clicks the "Track Order" button
    Then The order status should display "Your lunchbox order LBOX12345 was delivered on 2023-10-26."
