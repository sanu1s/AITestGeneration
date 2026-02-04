Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Tracking with Invalid Order Number
    Given the user is on the order tracking page "https://example.com/track-order"
    When the user enters order number "INVALID123"
    And the user enters zip code "47714"
    And the user clicks the "Track Order" button
    Then the error message should display "Invalid Order Number. Please check and try again."
