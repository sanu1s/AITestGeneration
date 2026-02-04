Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Track another order successfully with a different valid order number
    Given user is on the order tracking page
    When user enters order number "ORD67890"
    And user clicks on "Track Order" button
    Then the status message should display "Order Status: Delivered"
    And the current URL should be "https://example.com/track/ORD67890"
