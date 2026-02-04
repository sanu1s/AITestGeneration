Feature: Order Tracking - Positive Scenarios for Shipped Orders

  Scenario: Successfully track another shipped order with a different delivery date
    Given user is on the order tracking page
    When user enters order number "ORDER456"
    And user clicks the "Track Order" button
    Then the status message should display "Your order has shipped and is expected to arrive by August 15, 2025."
