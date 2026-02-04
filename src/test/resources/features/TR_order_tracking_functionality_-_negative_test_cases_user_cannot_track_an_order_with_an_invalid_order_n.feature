Feature: Order Tracking Functionality - NEGATIVE TEST CASES

  Scenario: User cannot track an order with an invalid order number
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
