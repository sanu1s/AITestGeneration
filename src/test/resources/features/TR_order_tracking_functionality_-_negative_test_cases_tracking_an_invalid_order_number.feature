Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Tracking an Invalid Order Number
    Given User is on the order tracking page "https://www.owncompany.com/track"
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order INVALID123 not found. Please check your order number."
