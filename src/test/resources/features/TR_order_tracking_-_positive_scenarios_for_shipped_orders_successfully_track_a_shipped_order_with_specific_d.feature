Feature: Order Tracking - Positive Scenarios for Shipped Orders

  Scenario: Successfully track a shipped order with specific delivery date
    Given user is on the order tracking page
    When user enters order number "ORDER123"
    And user clicks the "Track Order" button
    Then the status message should display "Your order has shipped and is expected to arrive by July 28, 2025."
