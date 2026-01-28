Feature: Order Tracking Functionality

  Scenario: Attempt to track with an invalid format order number
    Given User is on the order tracking page
    When User enters order number "ORD#$@"
    And User clicks the "Track Order" button
    Then An error message "Invalid order number format." should be displayed
