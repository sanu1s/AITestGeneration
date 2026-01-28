Feature: Order Tracking

  Scenario: Handle order number with different casing
    Given User is on the order tracking page
    When User enters order number "ord12345"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid Order Number. Please check the format."
