Feature: Agent Order Tracking Functionality - Negative Scenarios

  Scenario: Agent attempts to track an order with an invalid order number
    Given Agent is on the order tracking page
    When Agent enters order number "INVALIDORD"
    And Agent clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please check and try again."
