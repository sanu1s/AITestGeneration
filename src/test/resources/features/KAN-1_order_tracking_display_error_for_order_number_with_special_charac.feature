Feature: Order Tracking

  Scenario: Display error for order number with special characters
    Given User is on the order tracking page
    When User enters order number "ORD#@!123"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid Order Number. Please check the format."
