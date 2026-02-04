Feature: Order Tracking - Negative Scenarios for Monogram Restrictions

  Scenario: Attempt to track an order with a monogram preventing modification (Scenario 2)
    Given User is on the order tracking page
    When User enters order number "MONO456"
    And User clicks the "Track Order" button
    Then The error message should display "It would not help. I have confirmed based on the monogram option you selected"
