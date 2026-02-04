Feature: Order Tracking - Negative Test Cases

  Scenario: Display error for invalid order number
    Given User is on the order tracking page "https://www.ourcompany.com/track"
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please check and try again."
