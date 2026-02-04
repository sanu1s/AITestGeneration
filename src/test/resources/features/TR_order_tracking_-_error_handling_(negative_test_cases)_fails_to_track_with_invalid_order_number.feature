Feature: Order Tracking - Error Handling (Negative Test Cases)

  Scenario: Fails to Track with Invalid Order Number
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "INVALID999"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
