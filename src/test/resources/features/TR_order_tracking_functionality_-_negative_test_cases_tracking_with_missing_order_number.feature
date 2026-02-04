Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Tracking with Missing Order Number
    Given the user is on the order tracking page "https://example.com/track-order"
    When the user leaves the order number field empty
    And the user enters zip code "47714"
    And the user clicks the "Track Order" button
    Then the error message should display "Order Number is required."
