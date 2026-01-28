Feature: OrderTracking_NegativeScenarios

  Scenario: Track with a non-numeric order number
    Given User is on the order tracking page
    When User enters order number "ORDabc"
    And User clicks the "Track Order" button
    Then An error message "Invalid Order Number format." should be displayed
    And The URL should remain "http://127.0.0.1:8000/order/tracking"
