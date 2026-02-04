Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Tracking with Invalid Zip Code
    Given the user is on the order tracking page "https://example.com/track-order"
    When the user enters order number "181922016636"
    And the user enters zip code "00000"
    And the user clicks the "Track Order" button
    Then the error message should display "Invalid Zip Code for this order."
