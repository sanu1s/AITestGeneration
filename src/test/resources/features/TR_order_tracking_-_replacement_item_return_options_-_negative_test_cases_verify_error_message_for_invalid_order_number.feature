Feature: Order Tracking - Replacement Item Return Options - Negative Test Cases

  Scenario: Verify Error Message for Invalid Order Number
    Given User is on the order tracking page
    When User enters order number "INVALID000"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
    And The current URL should be "https://www.example.com/track-order"
