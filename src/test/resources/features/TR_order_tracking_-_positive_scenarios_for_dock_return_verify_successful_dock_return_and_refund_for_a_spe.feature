Feature: Order Tracking - Positive Scenarios for Dock Return

  Scenario: Verify successful dock return and refund for a specific item
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    Then The status message should display "Dock return processed for Bedframe."
    And The status message should display "Delivery of Bedframe cancelled."
    And The status message should display "Refund issued for Bedframe."
