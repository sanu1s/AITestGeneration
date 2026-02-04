Feature: Order Tracking - Negative Test Cases

  Scenario: Display error for non-existent order number
    Given User is on the order tracking page "https://www.ourcompany.com/track"
    When User enters order number "NONEXISTENT999"
    And User clicks the "Track Order" button
    Then The error message should display "Order NONEXISTENT999 not found. Please verify the order number."
