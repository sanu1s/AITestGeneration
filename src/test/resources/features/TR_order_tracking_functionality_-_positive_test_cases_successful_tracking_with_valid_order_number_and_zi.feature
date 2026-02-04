Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successful Tracking with Valid Order Number and Zip Code
    Given the user is on the order tracking page "https://example.com/track-order"
    When the user enters order number "181922016636"
    And the user enters zip code "47714"
    And the user clicks the "Track Order" button
    Then the status message should display "Order Found: Dispatched"
